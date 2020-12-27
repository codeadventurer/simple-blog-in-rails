Rails.application.routes.draw do
  get 'welcome/home'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/features'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "public#homepage"
end
