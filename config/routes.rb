Rails.application.routes.draw do
  resources :news
  resources :questions
  resources :g_infos
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users
  resources :guides
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'g_infos#index'

  get "/" => "g_infos#index"
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

  devise_scope :user do
  get "/login" => "devise/sessions#new"
  get "/logout" => "devise/sessions#logout"
  get "/users/sign_out" => "devise/sessions#destroy"
  end

  get "/mypage_guest" => "g_infos#mypage_guest"
  get "/mypage_chat" => "g_infos#mypage_chat"
  get "/mypage_chatroom" => "g_infos#mypage_chatroom"
  get "/offerpage" => "g_infos#offerpage"
  get "/offerpage_treat" => "g_infos#offerpage_treat"
  get "/company" => "g_infos#company"


end
