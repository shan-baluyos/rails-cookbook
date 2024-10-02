# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning the DB.."
Bookmark.destroy_all
Recipe.destroy_all
puts "Now ceating recipes"
Recipe.create!(
  name: "Spaghetti Carbonara",
  description: "A true Italian Carbonara recipe, it's ready in about 30 minutes. There is no cream as simplicity is key!",
  image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1001491_11-2e0fa5c.jpg?quality=90&webp=true&resize=440,400",
  rating: 4.1)
Recipe.create!(
  name: "Green Goddess Salad",
  description: "This simple Greek Goddess Salad uses green cabbage, cucumbers, and a simple homemade Green Goddess salad dressing! Easy cabbage salad recipe!",
  image_url: "https://feelgoodfoodie.net/wp-content/uploads/2022/01/Chopped-Green-Goddess-Salad-8.jpg",
  rating: 2.7)
Recipe.create!(
  name: "Beef Bulgogi",
  description: "A super easy recipe for Korean BBQ with the most flavorful marinade! The thin, tender slices of meat cook SO quickly!",
  image_url: "https://s23209.pcdn.co/wp-content/uploads/2019/04/240124_DD_korean-beef-bulgogi_274.jpg",
  rating: 4.5)
Recipe.create!(
  name: "Chicken Adobo",
  description: "It's an effortless recipe that yields juicy, tender chicken coated in a sweet savoury glaze with little pops of heat from peppercorns.",
  image_url: "https://www.recipetineats.com/tachyon/2015/02/Filipino-Chicken-Adobo_7.jpg?resize=900%2C1260&zoom=1",
  rating: 4.8)
Recipe.create!(
  name: "Margherita Pizza",
  description: "A novice cook can master the art of perfect pizza with our step-by-step guide. This homemade pizza recipe features a simple pizza dough and toppings.",
  image_url: "https://cdn.shopify.com/s/files/1/0274/9503/9079/files/20220211142754-margherita-9920_5a73220e-4a1a-4d33-b38f-26e98e3cd986.jpg?v=1723650067?w=1024",
  rating: 4.2)
Recipe.create!(
  name: "Parmigiana",
  description: "Meaning 'aubergine Parmesan' in Italian, this vegetarian bake with tomato and cheese is ideal for entertaining",
  image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1284581_9-2a85152.jpg?quality=90&webp=true&resize=440,400",
  rating: 4.9)
Recipe.create!(
  name: "Spicy Ramen",
  description: "This Korean ramen is bold, spicy, and full of flavor! Made with soft tofu, shiitake mushrooms, and a rich broth, it is sure to warm you up!",
  image_url: "https://glebekitchen.com/wp-content/uploads/2018/08/koreanramenfront.jpg",
  rating: 3.5)
Recipe.create!(
  name: "Halo-Halo",
  description: "The refreshing dish layers shaved ice and condensed milk on top of all sorts of ingredients for an end result that packs in lots of contrasting textures.",
  image_url: "https://assets.bonappetit.com/photos/60e46c6701084801b06de2a3/1:1/w_1920,c_limit/Halo-Halo-Recipe-2021.jpg",
  rating: 3.9)
puts "Finished! #{Recipe.all.count} recipes added"
