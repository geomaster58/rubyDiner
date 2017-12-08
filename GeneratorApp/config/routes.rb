Rails.application.routes.draw do
  resources :thumb_images
  get 'home_page/home'

  resources :custom3s
  resources :custom2s
  resources :customs
  resources :just_styles
  resources :no_javas
  resources :no_styles
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
