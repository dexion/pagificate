Rails.application.routes.draw do |map|
  resources :pages, :controller => 'pagificate/pages'
end