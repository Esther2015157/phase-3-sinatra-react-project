# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_09_142234) do
  create_table "Customer_reviews", force: :cascade do |t|
    t.string "body"
    t.integer "restuarant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restuarant", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "price"
    t.string "description"
  end

end
get "/reviews" do
  reviews = Review.all
  reviews.to_json
end
#post method
post "/reviews" do
  new_review = Review.create(
    comment: params[:comment]
  )
  new_review.to_json
end
#patch method
patch "/reviews/:id" do
  reviews = Review.find(params[:id])
  reviews.update(
    comment: params[:comment]
  )
  reviews.to_json
end
#delete method
delete "/reviews/:id" do
reviews = Review.find(params[:id])
reviews.destroy
reviews.to_json
end
end