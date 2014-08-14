# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  Cocktail.create(name: "Mojito", description: "most famous cocktail")
  Cocktail.create(name: "Margarita", description: "from Cuba")
  Cocktail.create(name: "Caipirinha", description: "from Brazil")

  Ingredient.create(name: "rhum")
  Ingredient.create(name: "lemon")
  Ingredient.create(name: "mint leaves")
  Ingredient.create(name: "sugar")
  Ingredient.create(name: "sparkling water")
  Ingredient.create(name: "tequila")
  Ingredient.create(name: "cointreau")

  Dose.create(amount: 1, cocktail_id: 1, ingredient_id: 1)
  Dose.create(amount: 2, cocktail_id: 1, ingredient_id: 2)
  Dose.create(amount: 1, cocktail_id: 2, ingredient_id: 3)
  Dose.create(amount: 2, cocktail_id: 2, ingredient_id: 6)
