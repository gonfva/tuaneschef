# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Cocinero.create(nombre: 'Nacho')
Cocinero.create(nombre: 'Cabanillas')
Cocinero.create(nombre: 'Espadas')
Cocinero.create(nombre: 'Ana')
Cocinero.create(nombre: 'Sergio')
Cocinero.create(nombre: 'Fernando')

user = User.new(
  email: 'test@example.com',
  password: '12345678',
  password_confirmation: '12345678',
  admin: true
)
user.save!
