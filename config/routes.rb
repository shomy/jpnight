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
  get '/g_infos/:id' => 'g_infos#show'
  get '/g_infos/:id/edit' => 'g_infos#edit'

  devise_scope :user do
  get "/login" => "devise/sessions#new"
  get "/logout" => "devise/sessions#logout"
  get "/users/sign_out" => "devise/sessions#destroy"
  end




  get "/mypage_guest" => "g_infos#mypage_guest"

  get "/mypage_chat" => "g_infos#mypage_chat"
  get "/mypage_chatroom" => "g_infos#mypage_chatroom"

  get "/mypage_q" => "g_infos#mypage_q"
  get "/offerpage" => "g_infos#offerpage"
  get "/offerpage_treat" => "g_infos#offerpage_treat"
  get "/guest_regi1" => "g_infos#guest_regi1"
  get "/guest_regi2" => "g_infos#guest_regi2"
  get "/guest_regi3" => "g_infos#guest_regi3"
  get "/company" => "g_infos#company"
  get "/delete" => "g_infos#delete"

end
