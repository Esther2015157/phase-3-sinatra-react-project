class CreateRestuarant < ActiveRecord::Migration[7.0]
  def change
    create_table :restuarant do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.string :description
  
  end
  end
end
