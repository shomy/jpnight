Rails.application.routes.draw do
  resources :guides
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'guides#top'
end
