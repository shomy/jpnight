Rails.application.routes.draw do
  resources :g_infos
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users
  resources :guides
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'guides#top'
  get "/mypage" => "guides#mypage"
  get "/mypage_guest" => "guides#mypage_guest"
  get "/mypage_edit" => "guides#mypage_edit"
  get "/mypage_chat" => "guides#mypage_chat"
  get "/mypage_chatroom" => "guides#mypage_chatroom"
end
