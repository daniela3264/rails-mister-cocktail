# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'json'
require 'rest-client'

Ingredient.destroy_all if Rails.env.development?

ingredients = []
# TODO: seed to insert 10 posts in the database fetched from the Hacker News API.
response = RestClient.get 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

repos = JSON.parse(response)

first_twenty = repos['drinks'].first(20)

first_twenty.each do |ingredient|
  ingredient = Ingredient.new(name: ingredient['strIngredient1'])
  ingredient.save!
  ingredients << ingredient
end

ingredients
