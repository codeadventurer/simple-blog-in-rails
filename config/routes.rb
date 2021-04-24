Rails.application.routes.draw do

  devise_for :accounts
  get 'about' => 'public#about', as: :about
  get 'blog' => 'public#blog', as: :blog
  get 'contact' => 'public#contact', as: :contact

  resources :posts
  post "post/view" => "posts#save_post_view", as: :post_view 

  root to: "public#homepage"
end
