Rails.application.routes.draw do
  root "home#top"
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


  resources :products

  resources :users do
  	get :autocomplete_user_email, on: :collection # 追加
  end

end
