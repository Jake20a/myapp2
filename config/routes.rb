Rails.application.routes.draw do
  get 'blogs/title:string'

  get 'blogs/body:text'

  resources :waffles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
