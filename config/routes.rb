Indaus::Application.routes.draw do
  
  get "mission/index"
  match "mission" => "mission/index"

  resources :enquiries


  resources :sponsors


    get "admin/index"
    match "admin" => "admin/index"

    get "sponsors/index"
    match "sponsors" => "sponsors/index"

    get "gallery/index"
    match "gallery" => "gallery#index"

    get "home/index"
    match "home" => "home#index"
    
    get "home/privacy"
    match "privacy" => "home#privacy"

    get "home/contact"
    match "contact" => "home#contact"

    get "home/about"
    match "about" => "home#about"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end