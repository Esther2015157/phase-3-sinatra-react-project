class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # Add your routes here
  #restuarant routes get method
  get "/restuarant" do
    restuarant = Restuarant.all
    restuarant.to_json
  end
  #post routes for hotels method
  post "/restuarant" do
    reserved = Restuarant.create(
      name: params[:name],
      location: params[:location],
      price: params[:price],
      description: params[:description]
    )
    reserved.to_json
  end
  #patch or put routes method
  patch "/restuarant/:id" do
    restuarant= Restuarant.find(params[:id])
    restuarant.update(
      name: params[:name],
      price: params[:price],
      description: params[:description]
    )
    restuarant.to_json
  end
  #delete routes for restuarant method
  delete "/restuarant/:id" do
    restuarant= Restuarant.find(params[:id])
    restuarant.destroy
    restuarant.to_json
  end
  get "/reviews" do
    reviews = CustomerReview.all
    reviews.to_json
  end
  #post method
  post "/reviews" do
    new_review = CustomerReview.create(
      comment: params[:comment]
    )
    new_review.to_json
  end
  #patch method
  patch "/reviews/:id" do
    reviews = CustomerReview.find(params[:id])
    reviews.update(
      comment: params[:comment]
    )
    reviews.to_json
  end
#delete method
delete "/reviews/:id" do
  reviews = CustomerReview.find(params[:id])
  reviews.destroy
  reviews.to_json
end
end
