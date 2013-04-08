BixidbRails::Application.routes.draw do
  resources :user_data


  resources :stations
  resources :bixi_statues  
end
