Rails.application.routes.draw do
  get 'welcome/home'

  # setting root ensures the app opens to the 'home' page first (tells rails the homepage)
  root 'welcome#home'
  root 'potatoes#index'
  
  resources :potatoes
end
