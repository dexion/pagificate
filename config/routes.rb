Rails.application.routes.draw do

  resources :pagificate, :only => [] do
    scope :module => :pagificate do
      resources :pages
    end
  end

end