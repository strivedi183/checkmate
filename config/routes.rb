Checkmate::Application.routes.draw do
  root :to => 'welcome#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :transactions, :only => [:new, :create]

  resources :banks, :only => [:new, :create, :show] do
    collection do
      get :transfer
      post :xfer
    end
  end


  resources :users, :only => [:new, :create]

end