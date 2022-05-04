Rails.application.routes.draw do

  resources :prices
   get "/", to: "pages#home"

   get "api/login", to: "api#login"
   get "api/price/:id", to: "api#read_price"
   delete "api/price/:id", to: "api#read_price"
   patch "api/price/:id", to: "api#read_price"
   # get "/list-prices", to: "api#prices"
   #  "/update-price/", to: "api#prices"

   
  

end
 