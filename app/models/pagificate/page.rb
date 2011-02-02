module Pagificate
  class Page < ActiveRecord::Base
    validates_uniqueness_of :title
  end
end
