class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # Add your routes here
  #restuarant routes get method
  get "/restuarant" do
    restuarant = restuarant.all
    restuarant.to_json
  end
  #post routes for hotels method
  post "/restuarant" do
    reserved = restuarant.create(
      name: params[:name],
      location: params[:location],
      price: params[:price],
      description: params[:description]
    )
    reserved.to_json
  end
  #patch or put routes method
  patch "/restuarant/:id" do
    restuarant= restuarant.find(params[:id])
    restuarant.update(
      name: params[:name],
      price: params[:price],
      description: params[:description]
    )
    restuarant.to_json
  end
  #delete routes for restuarant method
  delete "/restuarant/:id" do
    restuarant= restuarant.find(params[:id])
    restuarant.destroy
    restuarant.to_json
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
