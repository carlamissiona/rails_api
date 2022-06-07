# Deployed Rails on Replit
# Some Ruby I've learned 

 
`class ApiController < ApplicationController
  def login
  end

   def prices`
    `@prices = Price.all`
   
   
       
 
 ` def update_price
      if request.method == "DELETE"` 
         ` @price = Price.find(params[:id])`
     ` end 
      if request.method == "POST"`
          # Some Ruby I've learned Raw SQL is faster 5 x than methods from ORM
         ` Price.find_by_sql([ "INSERT INTO Prices (name_coin, price ,link) VALUES( ? , ? , ? , ?);", params[:name_coin] , params[:price], params[:image], params[:link] ] ) ` 
         
      
    `end
      
  end` 
