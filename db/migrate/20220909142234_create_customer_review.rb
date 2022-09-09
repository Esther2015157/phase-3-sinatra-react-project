class CreateCustomerReview < ActiveRecord::Migration[7.0]
  def change
    create_table :Customer_reviews do |t|
      t.string :body
      t.integer :restuarant_id
      t.timestamps
    end
  end
end
  

