module Pagificate

  class Page < ActiveRecord::Base

    has_permalink :title

    validates :title, :presence => true, :uniqueness => true

    def to_param
      permalink
    end

  end

end
