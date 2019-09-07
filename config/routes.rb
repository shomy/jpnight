Rails.application.routes.draw do
  devise_for :users, controllers: { :registrations => 'users/registrations'}

  devise_scope :user do
  get "/users/sign_up"  => "devise/registrations#new"
  post 'users'  => "devise/registrations#create"
  get "/users/sign_in"  => "devise/sessions#new"
  get '/users/sign_out' => "devise/sessions#destroy"


  end
  resources :users, :only => [:index, :show]
  root "users#index"
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show, :index]

  get 'users/index'
  get 'users/show'
  resources :create_g_infos
  resources :news
  resources :questions
  resources :g_infos
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users

  resources :guides
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  get "/g_infos/new" => "g_infos#new"
  get '/g_infos/:id' => 'g_infos#show'
  get '/g_infos/:id/edit' => 'g_infos#edit'
  get '/outline_info/company' => 'outline_info#company'
  get '/outline_info/help' => 'outline_info#help'
  get '/outline_info/code' => 'outline_info#code'
  get '/outline_info/philosophy' => 'outline_info#philosophy'
  get '/outline_info/policy' => 'outline_info#policy'
  get '/outline_info/team' => 'outline_info#team'
  get '/outline_info/contact' => 'outline_info#contact'






end
