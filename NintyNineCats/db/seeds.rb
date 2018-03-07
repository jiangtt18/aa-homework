# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Beginning to seed'

Cat.destroy_all

Cat.create!(birth_date: '2017/07/15', color: "grey", name: "Evie", sex:"F",
  description: "cute gray cat")

Cat.create!(birth_date: '2017/07/15', color: "white", name: "Cuddles", sex:"M",
    description: "talktive white cat")

Cat.create!(birth_date:  '2016/07/15', color: "grey", name: "Kubo", sex:"M",
  description: "aggresive grey cat")

# t.date "birth_date", null: false
# t.string "color", null: false
# t.string "name", null: false
# t.string "sex", limit: 1, null: false
# t.text "description", null: false
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
