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
      post :user_xfer
    end
    member do
      get :new_transaction
    end
  end


  resources :users, :only => [:new, :create]

end