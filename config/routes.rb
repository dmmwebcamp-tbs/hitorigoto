Rails.application.routes.draw do


  get 'owners/top'
  get '/' => 'homes#top', as: 'top'
  get '/homes/about' => 'homes#about'
  get '/messages' => 'messages#new'
  get '/messages/index' => 'messages#index'
  get '/messages/:id' => 'messages#show'

resources :users, only: [:edit, :update] do
  get '/mypage' => 'users#mypage'
end

resources :messages, only: [:new, :create]

resources :cdposts

resources :cd_artists

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

  get 'products' => 'products#index'

  resources :users do
  	get :autocomplete_user_email, on: :collection # 追加
  end

end
