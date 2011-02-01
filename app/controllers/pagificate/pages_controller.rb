module Pagificate
  
  class PagesController < ApplicationController
    before_filter :find_page, :except => [:index, :new, :create]
    
    unloadable
    
    def index
      @pages = Page.all
    end
    
    def new
      @page = Page.new
    end
    
    def show
    end
    
    def create
      @page = Page.new(params[:page])
      
      respond_to do |format|
        if @page.save
          format.html { redirect_to pages_path, :notice => 'Page created successfully.' }
        else
          format.html { redirect_to new_page_path @page, :notice => 'Page could not be created.'}
        end
      end
    end
    
    def edit
    end
    
    def destroy
      @page.destroy
      
      respond_to do |format|
        format.html { redirect_to pages_path, :notice => 'Page deleted.'}
      end
    end

private

    def find_page
      @page = Page.find(params[:id])
    end
  
  end
  
end