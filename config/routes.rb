Wsse::Application.routes.draw do

  resources :restaurants, :only => [:index, :create, :show] do
    resources :comments, :only => [:create]
    resources :comments do 
      get :vote_up, :on => :member
    end
  end

  root :to => 'restaurants#index'
end
