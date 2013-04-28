Soocrates::Application.routes.draw do
  root :to => 'home#index'
  post '/login'=> 'sessions#create',      :as=>:login
  delete '/logout' => 'sessions#delete',  :as=>:logout

  resources :sessions,  :only=>[:create, :delete]
  resources :questions, :only=>[:create, :index] do 
    member do 
      put :resolve
    end
  end
  resources :challenges
  resources :units
  get '/profile' => 'profile#show', :as=>:profile

  
end
