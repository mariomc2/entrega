Rails.application.routes.draw do

  # THIS IS THE LATEST WORKING PROJECT 

  root 'companies#index'

  resources :companies do
    resources :transporters do 
      member do
        get :orders
      end      
    end
    resources :orders do
      collection do
        get :posts
        get :taken
      end
      member do
        get :take
      end
    end
  end

  resources :senders do
    resources :orders do
      collection do
        get :posts
        get :posted
      end
    end
  end 

  resources :transporters do
    resources :orders 
  end
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
