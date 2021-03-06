Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  get 'pages/home'

  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  get 'steelers', to: 'pages#steelers'

  root to: 'pages#home'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
