module Pagificate
  
  class PagesController < ApplicationController
    before_filter :find_page, :except => [:index, :new, :create, :show]
    
    unloadable
    
    def index
      @published_pages   = Page.where(['published = ?', true])
      @unpublished_pages = Page.where(['published = ?', false])
    end
    
    def show
      page = Page.find_by_permalink(params[:id])
      page.published? ? @page = page : redirect_to('/', :notice => 'No such page exists')
    end
    
    def new
      @page = Page.new
    end    
    
    def create
      @page = Page.new(params[:page])

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
      @page = Page.find_by_permalink(params[:id])
    end
  
  end
  
end