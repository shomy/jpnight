Rails.application.routes.draw do
  resources :g_infos
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users
  resources :guides
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'guides#g_infos'

  get "/login" => "guides#login"
  get "/logout" => "guides#logout"
  get "/mypage" => "guides#mypage"
  get "/mypage_guest" => "guides#mypage_guest"
  get "/mypage_edit" => "guides#mypage_edit"
  get "/mypage_chat" => "guides#mypage_chat"
  get "/mypage_chatroom" => "guides#mypage_chatroom"
  get "/mypage_news" => "guides#mypage_news"
  get "/mypage_q" => "guides#mypage_q"
  get "/offerpage" => "guides#offerpage"
  get "/guest_regi1" => "guides#guest_regi1"
  get "/guest_regi2" => "guides#guest_regi2"
  get "/guest_regi3" => "guides#guest_regi3"
  get "/company" => "guides#company"
end
