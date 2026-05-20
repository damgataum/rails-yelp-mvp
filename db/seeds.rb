require "faker"

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
10.times do
  new_restaurant = Restaurant.new
  new_restaurant.name = Faker::Restaurant.name
  new_restaurant.address = Faker::Address.street_address
  new_restaurant.phone_number = Faker::PhoneNumber.phone_number
  new_restaurant.category = [ "chinese", "italian", "japanese", "french", "belgian" ][rand(5)]
  new_restaurant.save
  rand(6).times do
      new_review = Review.new(content: Faker::Restaurant.review, rating: rand(6))
      new_review.restaurant = new_restaurant
      new_review.save
  end
end

puts "Done!"
