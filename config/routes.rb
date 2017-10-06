Rails.application.routes.draw do
  get 'welcome/home'

  # setting root ensures the app opens to the 'home' page first
  root 'welcome#home'
end
