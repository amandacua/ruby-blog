Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :articles
  # routes > controller > model > view
  get '/articles' => 'articles#index'
end
