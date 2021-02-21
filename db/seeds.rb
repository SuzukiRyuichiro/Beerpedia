# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'making breweries'

100.times do
  Brewery.new(name: Faker::Beer.brand).save || next
end

puts "made #{Brewery.count} breweries"
puts 'making beers in breweries'

100.times do
  beer = Beer.new(name: Faker::Beer.name, abv: rand(3.0..10.0).round(1), brewery: Brewery.all.sample)
  beer.save
  puts "name: #{beer.name}"
end

puts "made #{Beer.count} beers in breweries"
puts 'growing hops'

100.times do
  Hop.new(name: Faker::Beer.hop).save || next
end

puts "Grew #{Hop.count} hops"
puts 'growing malts'

100.times do
  Malt.new(name: Faker::Beer.malts).save || next
end

puts "Grew #{Malt.count} malts"
puts 'Writing Recipes'

i = 1

100.times do
  recipe = Recipe.new(description: Faker::Quote.yoda, beer: Beer.find(i))
  recipe.save
  i += 1

  (1..3).to_a.sample.times do
    recipe_hop = RecipeHop.new(recipe: recipe, hop: Hop.all.sample)
    recipe_hop.save
    puts "adding #{recipe_hop.hop.name}..."
  end

  (1..5).to_a.sample.times do
    recipe_malt = RecipeMalt.new(recipe: recipe, malt: Malt.all.sample)
    recipe_malt.save
    puts "adding #{recipe_malt.malt.name}..."
  end
end

puts "made beers!!!!"


