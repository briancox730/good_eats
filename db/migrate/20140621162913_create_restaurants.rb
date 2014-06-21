class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.integer :zipcode, null: false
      t.text :description
      t.integer :category_id

      t.timestamps
    end
    add_index :restaurants, :name, unique: true
  end
end
#A restaurant must have a name, address, city,
#state, and zip code. It can optionally have a
#description and a category
#(e.g. thai, italian, chinese).
