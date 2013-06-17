Indaus::Application.routes.draw do
  
  resources :enquirers


  get "mission/index"
  match "mission" => "mission/index"

  resources :enquiries


  resources :sponsors

  devise_for :users
  resources :users


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

  authenticated :admin do
    get "admin/index", :id => "admin"
    match "admin" => "admin#index"
  end

  root :to => "home#index"
  
end