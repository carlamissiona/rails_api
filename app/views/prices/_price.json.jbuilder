json.extract! price, :id, :name_coin, :price, :image, :link, :description, :created_at, :updated_at
json.url price_url(price, format: :json)
