# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando os produtos..."

products = [
  { name: "Arroz",
    price: 15.00 },
  { name: "Feijão",
    price: 6.00 },
  { name: "Farinha de trigo",
    price: 3.75 }
]

products.each do |product|
  Product.find_or_create_by!(product)
end

puts "Produtos cadastrados com sucesso!"