Rails.application.routes.draw do
  
  root "pages#home"
  #this is the url route webpage is opened in.
  #'pages' is the controller
  #'home' function within the application controller
  
  get '/about', to: "pages#about"
  get '/help', to: "pages#help"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :todos
  #above gives all the CRUD routes for todos

end
