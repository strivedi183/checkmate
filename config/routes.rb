Checkmate::Application.routes.draw do
  root :to => 'welcome#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :banks, :only => [:new, :create, :show]

  resources :users, :only => [:new, :create]

end
