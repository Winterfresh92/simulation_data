Rails.application.routes.draw do
  resources :players do
    resources :games
  end
  
  root 'players#index'
end
