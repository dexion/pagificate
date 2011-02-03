module Pagificate  
  class Page < ActiveRecord::Base
    validates_uniqueness_of :title
    
    has_permalink :title
    
    def to_param
      permalink
    end
  end
end
