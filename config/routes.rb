Checkmate::Application.routes.draw do
  root :to => 'welcome#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :banks, :only => [:new, :create] do
    collection do
      get :transfer
      post :xfer
    end
  end

  resources :users, :only => [:new, :create]


end
