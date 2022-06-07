# Rails on Replit
# Some Ruby I've learned 

 
`class ApiController < ApplicationController
  def login
  end

   def prices
    @prices = Price.all
   
      
  end
  def update_price
      if request.method == "DELETE" 
          @price = Price.find(params[:id])
      end 
      if request.method == "POST"
          # Some Ruby I've learned Raw SQL is faster 5 x than methods from ORM
          Price.find_by_sql([ "INSERT INTO Prices (name_coin, price ,link) VALUES( ? , ? , ? , ?);", params[:name_coin] , params[:price], params[:image], params[:link] ] )  
         
       #update
       
       #add
    end
      
  end
  
  def read_price
      if request.method == "POST"
        #Delete 
        Price.find_by_sql(["DELETE FROM Prices
WHERE id =?", params[:id] ])  
          
      end
      
      @price = Price.find(params[:id])
      # Some Ruby I've learned Rails mvc is easy to learn
      render plain: @price.as_json(root: "prices")
    
      
  end
end`
