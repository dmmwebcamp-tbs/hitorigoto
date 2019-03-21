Rails.application.routes.draw do

  get '/' => 'homes#top', as: 'top'
  get '/homes/about' => 'homes#about'
  get 'admins/owners/top' => 'admins/owners#top'

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
end
