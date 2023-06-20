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

puts "Cadastrando pessoas..."
people = [
  { name: "Karina Sasaki"}
]

people.each do |person|
  Person.find_or_create_by!(person)
end
puts "Pessoas cadastradas com sucesso!"

default_password = 123456
puts "Cadastrando administrador padrão..."
admin = [
  { email: "admin@admin.com.br",
    password: default_password,
    password_confirmation: default_password }
]

admin.each do |admin|
  Admin.create!(admin)
end
puts "Administrador padrão criado com sucesso!"

puts "Cadastrando usuário padrão..."
user = [
  { email: "user@user.com.br",
    password: default_password,
    password_confirmation: default_password }
]

user.each do |user|
  User.create!(user)
end
puts "Usuário padrão criado com sucesso!"