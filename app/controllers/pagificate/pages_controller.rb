module Pagificate

  class PagesController < ApplicationController

    unloadable

    def index
      @published_pages   = Page.where('pages.published = ?', true)
      @unpublished_pages = Page.where('pages.published = ?', false)
    end

    def show
      page = Page.find_by_permalink params[:id]
      if page.blank?
        redirect_to('/', :notice => t("pagificate.not_exist", :default => "Page doesn't exist")) and return
      end
      page.published? ? @page = page : redirect_to('/', :notice => t("pagificate.not_published", :default => "Page doesn't published"))
      render :layout => false unless page.use_site_layout?
    end

  end

end
