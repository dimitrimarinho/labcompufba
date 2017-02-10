#  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  root to: redirect('/posts')
#end

Rails.application.routes.draw do
  resources :agendamentos
  devise_for :users
  root 'application#index'
  get '/pesquisador', to: 'pesquisador#index'
  get '/pesquisador/show', to: 'pesquisador#show'
  get '/pesquisador/edit', to: 'pesquisador#edit'
  get '/equipamentos', to: 'equipamentos#index'  
end