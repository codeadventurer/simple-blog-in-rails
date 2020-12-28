Rails.application.routes.draw do

  get 'about' => 'public#about', as: :about
  get 'blog' => 'public#blog', as: :blog
  get 'contact' => 'public#contact', as: :contact

  resources :posts

  root to: "public#homepage"
end
