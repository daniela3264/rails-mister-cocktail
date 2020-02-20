# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'json'
require 'open-uri'

Ingredient.destroy_all if Rails.env.development?

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_data = open(url).read
ingredients_parsed = JSON.parse(ingredients_data)
ingredients_parsed = ingredients_parsed['drinks']

ingredients_parsed.each do |i|
  ingredient = Ingredient.new(name: i['strIngredient1'])
  ingredient.save!
end
