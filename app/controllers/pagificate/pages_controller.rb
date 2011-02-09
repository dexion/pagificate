module Pagificate

  class PagesController < ApplicationController

    unloadable

    before_filter :find_page, :except => [:index, :new, :create]

    def index
      @published_pages   = Page.where('pages.published = ?', true)
      @unpublished_pages = Page.where('pages.published = ?', false)
    end

    def show
      redirect_to '/', :notice => 'No such page exists' unless @page.published?
      render :layout => false unless @page.use_site_layout?
    end

    def new
      @page = Page.new
    end

    def create
      @page = Page.new params[:page]

      respond_to do |format|
        if @page.save
          format.html { redirect_to pages_path, :notice => 'Page created successfully.' }
        else
          flash[:error] = 'Page could not be created.'
          format.html { render :action => :new }
        end
      end
    end

    def edit
    end

    def update
      respond_to do |format|
        if @page.update_attributes(params[:page])
          format.html { redirect_to pages_path, :notice => 'Page updated.'}
        else
          flash[:error] = 'Page could not be updated.'
          format.html { render :action => :edit }
        end
      end
    end

    def destroy
      @page.destroy

      respond_to do |format|
        format.html { redirect_to pages_path, :notice => 'Page deleted.'}
      end
    end

private

    def find_page
      @page = Page.find_by_permalink params[:id]
    end

  end

end
