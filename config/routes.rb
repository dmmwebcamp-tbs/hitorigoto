Rails.application.routes.draw do


  get 'owners/top'
  get '/' => 'homes#top', as: 'top'
  get '/homes/about' => 'homes#about'

resources :messages, only: [:new, :create, :index, :show]


resources :cdposts
resources :cd_artists
resources :cd_labels

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'credit' => 'payments#credit'
  # get 'products' => 'products#index'

  get 'index' => 'carts#index'

  get 'account' => 'purchases#account'

  get 'users/' => 'users#index', as: "usersearch"
  get 'users/all_delivery', as: "all_delivery"
  get 'users/:id/all_history' => 'users#all_history', as: "all_history"
  get 'messages/' => 'messages#index', as: "search"


resources :users do
  get '/mypage' => 'users#mypage'
  patch '/admin' => 'users#admin_update'
  get :autocomplete_user_email, on: :collection
end

  resources :products


  resources :purchases, only: [:create, :update]

  resources :users do
    get :autocomplete_user_email, on: :collection # 追加
  end


end
