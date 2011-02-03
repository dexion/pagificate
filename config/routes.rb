Rails.application.routes.draw do |map|

  # match 'page/:permalink', :controller => 'pagificate/pages', :action => 'show'

  resources :pages, :controller => 'pagificate/pages'
  
end