Rails.application.routes.draw do
  get 'drivers/index'
  get 'drivers/new'
  get 'drivers/create'
  get 'drivers/edit'
  get 'drivers/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :drivers
end
