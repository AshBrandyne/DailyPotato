# Auto-generated Routes file was editted by me to create the root directory
# This ensures user is presented with 'welcome#home' as the homepage
# Also ensures the :potatoes table from the database is used in this project

# Author: Ash-Lee Hommy 040840815
# Nov 1st, 2017

Rails.application.routes.draw do
  get 'welcome/home'

  # setting root ensures the app opens to the 'home' page first (tells rails the homepage)
  root 'welcome#home'
  root 'potatoes#index'
  
  resources :potatoes
end
