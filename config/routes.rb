Checkmate::Application.routes.draw do
  root :to => 'welcome#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

<<<<<<< HEAD
  resources :banks, :only => [:new, :create] do
    collection do
      get :transfer
      post :xfer
    end
  end
=======
  resources :banks, :only => [:new, :create, :show]
>>>>>>> cee179532dea8882a60c38a8212472c61528c60b

  resources :users, :only => [:new, :create]


end
