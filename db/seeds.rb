# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


sport_category = Category.where(name: 'Sport').first_or_create(name: 'Sport')

Subcategory.where(name: 'Surfing', category_id: sport_category.id).first_or_create(name: 'Surfing', category_id: sport_category.id)
Subcategory.where(name: 'Cycling', category_id: sport_category.id).first_or_create(name: 'Cycling', category_id: sport_category.id)

electronics_category = Category.where(name: 'Electronics').first_or_create(name: 'Electronics')

Subcategory.where(name: 'Laptops', category_id: electronics_category.id).first_or_create(name: 'Laptops', category_id: electronics_category.id)
Subcategory.where(name: 'Cameras', category_id: electronics_category.id).first_or_create(name: 'Cameras', category_id: electronics_category.id)
