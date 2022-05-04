class CreatePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :prices do |t|
      t.string :name_coin
      t.string :price
      t.string :image
      t.string :link
      t.string :description

      t.timestamps
    end
  end
end
