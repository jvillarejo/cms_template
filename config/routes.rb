Rails.application.routes.draw do
  get 'admin/dashboard'

  root 'static#home'

  get 'empresa', to: 'static#empresa', as: 'empresa'
  get 'contacto', to: 'static#contacto', as: 'contacto'

  resources :sessions, only: [:new, :create, :destroy]
  resources :obras do 
  	collection do
  		get :obras_en_curso
  		get :obras_finalizadas
  	end
  end
  
  resources :clientes, only: [:index, :new, :create, :destroy]

  resource :admin, only: [] do 
    member do 
      get :dashboard
    end
  end

  resources :searches, only: [:create, :show], path: 'buscar'

  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
end
