module Pagificate

  class Page < ActiveRecord::Base

    validates :title, :presence => true, :uniqueness => true

    has_permalink :title

    def to_param
      permalink
    end

  end

end
