require "csv"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Meal.destroy_all
Chef.destroy_all
Restaurant.destroy_all

# Get restaurant data
csv_file = Rails.root.join('db/restaurant.csv')
csv_data = File.read(csv_file)

productsRaw = CSV.parse(csv_data, headers: true)
products = []
row_count = 0

productsRaw.each do |prod|
    if row_count < 5000

      if prod["Establishment Type"] == "Restaurant" && !products.any? { |p| p["Establishment ID"] == prod["Establishment ID"] || p["Establishment Name"] == prod["Establishment Name"] }
        products << prod
        #puts prod["Establishment ID"]
      end
      row_count += 1
    else
      break
    end
  end
puts products.count
# Get meal data
  meal_file = Rails.root.join('db/meals2.csv')
  meal_data = File.read(meal_file)

  mealRaw = CSV.parse(meal_data, headers: false)
  meal = []

# Initialize Database

products = products.shuffle
selected_products = products.take(205)
index = 0

selected_products.each do |rant|
    rest = Restaurant.new(
        RestaurantName: rant["Establishment Name"],
        LocationLatitude: rant["Latitude"],
        LocationLongitude: rant["Longitude"],
        Cuisine: Faker::Food.ethnic_category,
    )
    rest.save
end

300.times do
   # create the chef
   res = Restaurant.order("RANDOM()").limit(1).first
   name = Faker::Name.name
   age = Faker::Number.between(from: 21, to: 65)
   nationality = Faker::Nation.nationality
   chef = Chef.new(ChefName: name, ChefAge: age, Nationality: nationality, restaurant: res)
   chef.save

   puts "#{chef.inspect}....Rest#{Restaurant.count}"
end

mealRaw.each_with_index do |element,i|
    res = Restaurant.order("RANDOM()").limit(1).first
    meal = Meal.new(
        MealName: element[1],
        Image: element[6],
        restaurant: res
    )
    meal.save
end