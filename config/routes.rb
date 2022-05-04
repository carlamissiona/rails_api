Rails.application.routes.draw do

  resources :prices
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

   get "api/login", to: "api#login"
   get "api/price/:id", to: "api#read_price"
   delete "api/price/:id", to: "api#read_price"
   patch "api/price/:id", to: "api#read_price"
   # get "/list-prices", to: "api#prices"
   #  "/update-price/", to: "api#prices"
  

end
