# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Recipe.destroy_all
puts "creating recipes"
Recipe.create!(name: "Spaghetti Carbonara", description: "A true Italian Carbonara recipe, it's ready in about 30 minutes. There is no cream as simplicity is key!", image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1001491_11-2e0fa5c.jpg?quality=90&webp=true&resize=440,400", rating: 7.9)
Recipe.create!(name: "Green Goddess Salad", description: "This simple Greek Goddess Salad uses green cabbage, cucumbers, and a simple homemade Green Goddess salad dressing! Easy cabbage salad recipe!", image_url: "https://feelgoodfoodie.net/wp-content/uploads/2022/01/Chopped-Green-Goddess-Salad-8.jpg", rating: 4.7)
Recipe.create!(name: "Beef Bulgogi", description: "A super easy recipe for Korean BBQ with the most flavorful marinade! The thin, tender slices of meat cook SO quickly!", image_url: "https://s23209.pcdn.co/wp-content/uploads/2019/04/240124_DD_korean-beef-bulgogi_274.jpg", rating: 8.5)
Recipe.create!(name: "Chicken Adobo", description: "It's an effortless recipe that yields juicy, tender chicken coated in a sweet savoury glaze with little pops of heat from peppercorns.", image_url: "https://www.recipetineats.com/tachyon/2015/02/Filipino-Chicken-Adobo_7.jpg?resize=900%2C1260&zoom=1", rating: 9.5)
puts "finished adding recipes"
