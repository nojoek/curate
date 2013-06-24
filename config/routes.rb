Curate::Application.routes.draw do
  resources :users

  root to: 'sessions#new'

    get '/sessions/new' => 'sessions#new', as: 'new_session'
    post '/sessions' => 'sessions#create', as: 'sessions'
    delete '/sessions' => 'sessions#destroy', as: 'session'
 
    
  match ':action' => 'static#:action'
  # map.connect ':action', :controller => "static"
 

  mount_browsercms
end
