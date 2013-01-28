# -*- encoding : utf-8 -*-
module Pagificate

  class Page < ActiveRecord::Base

    has_permalink :title

    validates :title, :presence => true, :uniqueness => true

    attr_accessible :title, :body, :use_site_layout, :published, :permalink

    def to_param
      permalink
    end

  end

end
