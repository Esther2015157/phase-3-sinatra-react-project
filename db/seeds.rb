puts "🌱 Seeding spices..."

# Seed your database here
lamar= restaurant.create(name: "lamar", location: "miami", price: "100$",description:"lamar restuarant is located in beautiful Monteverde, famous for its rare and gorgeous cloud forest and friendly community.")
jaguar = restaurant.create(name: "jaguar", location: "france",  price: "70$",description:"Only a few steps from Mount Royal Park, renowned art galleries and museums,")
bagel = restaurant.create(name: "bagel", location: "china", price: "200$",description:"we arelocated just minutes from downtown. Conveniently situated away from congestion and crowds,")
makoto= restaurant.create(name: "makoto", location: "korea", price: "170$",description:"This restuarant sits in central Nice, just 1,150 feet from the ferry port and a 20-minute walk from the Promenade des Anglais")
ariete= restaurant.create(name: "ariete", location: "india", price: "220$",description:"Chelsea features sleek, modern, spacious rooms and top-notch service,")



review1 = Review.create(body: " The rooms were clean, very comfortable, and the staff was amazing.", restuarant _id: lamar.id)
review2 = Review.create(body: "The sevice was exceptional as well. Would definitely send a friend there.",restuarant_id: jaguar.id)
review3 = Review.create(body: "Property is clean and has a fantastic old time charm.", restuarant_id: bagel.id)
review4 = Review.create(body: "It was great. Service top notch as always.", restuarant_id: makoto.id)
review5 = Review.create(body: "The best restuarant I’ve ever been privileged enough to dine at. Gorgeous building," restuarant_id: ariete.id)
puts "✅ Done seeding!"








