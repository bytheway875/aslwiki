Aslwiki::Application.routes.draw do

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :users do
    resources :profiles
  end
  resources :entries do
    resources :signs
  end

end