# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




User.create!(first_name: 'janvier'
,address:'kabuga',
 tel_phone:'23456',
 email: 'janvier1j@wayimboneye.dive', 
 password: '123456', 
 password_confirmation: '123456', 
 admin: true )
User.create!(first_name: 'mutu',address:'kabuga',tel_phone:'23456', email: 'mutuyimanaj@dive.com', password: '098765', password_confirmation: '098765' )
User.create!(first_name: 'janvier', address:'kabuga',tel_phone:'23456',email: 'janvier@dive.com', password: '3456789', password_confirmation: '3456789' )
User.create!(first_name: 'mutuyimana',address:'kabuga',tel_phone:'23456', email: 'mutuyimana1@dive.com', password: 'qwertyui', password_confirmation: 'qwertyui' )
User.create!(first_name: 'janvier', address:'kabuga',email: 'janvierhh@dive.com', password: 'asdfghhjk', password_confirmation: 'asdfghhjk' )
User.create!(first_name: 'mutuyimana',address:'kabuga', tel_phone:'23456', email: 'mutuyimana2@dive.com', password: 'zxcvbndfgh', password_confirmation: 'zxcvbndfgh' )
User.create!(first_name: 'janvier', email: 'janvier2@dive.com',address:'kabuga', tel_phone:'23456', password: 'dfghrty', password_confirmation: 'dfghrty' )
User.create!(first_name: 'mutuyimana', email: 'mutuyimana3@dive.com',address:'kabuga', tel_phone:'23456', password: 'wdvgyuujm', password_confirmation: 'wdvgyuujm' )
User.create!(first_name: 'manzi', email: 'manzi@dive.com',address:'kabuga', tel_phone:'23456', password: 'xdftgbnj', password_confirmation: 'xdftgbnj', admin: true )
User.create!(first_name: 'imana', email: 'imana@dive.com',address:'kabuga', tel_phone:'23456', password: '123456', password_confirmation: '123456' )
User.create!(first_name: 'janvier', email: 'janvier10@dive.com',address:'kabuga', tel_phone:'23456', password: '123456', password_confirmation: '123456' )
User.create!(first_name: 'mutuyimana', email: 'mutuyimana56@dive.com',address:'kabuga', tel_phone:'23456', password: '123456', password_confirmation: '123456' )
User.create!(first_name: 'janvier', email: 'yu@dive.com',address:'kabuga', tel_phone:'23456', password: '123456', password_confirmation: '123456')
User.create!(first_name: 'mutuyimana', email: 'mutuyimanay8@dive.com',address:'kabuga', tel_phone:'23456', password: '123456', password_confirmation: '123456' )
User.create!(first_name: 'janvier', email: 'janvier56@dive.com',address:'kabuga', tel_phone:'23456', password: '123456', password_confirmation: '123456' )
User.create!(first_name: 'mutuyimana', email: '8787@dive.com',address:'kabuga', tel_phone:'23456', password: '123456', password_confirmation: '123456' )
User.create!(first_name: 'janvier', email: 'janvieruiiui@dive.com',address:'kabuga', tel_phone:'23456', password: '123456', password_confirmation: '123456' )
User.create!(first_name: 'mutuyimana', email: 'mutuyimanyhghga@dive.com',address:'kabuga', tel_phone:'23456', password: '123456', password_confirmation: '123456' )
User.create!(first_name: 'janvier', email: 'janvierhhjhjhj@dive.com',address:'kabuga', tel_phone:'23456', password: '123456', password_confirmation: '123456')
User.create!(first_name: 'mutuyimana', email: 'mutuyimanajhjjh@dive.com',address:'kabuga', tel_phone:'23456', password: '123456', password_confirmation: '123456' )
User.create!(first_name: 'janvier', email: 'janvierghggh@dive.com',address:'kabuga', tel_phone:'23456', password: '123456', password_confirmation: '123456' )
User.create!(first_name: 'mutuyimana', email: 'mutuyimanahjhjhj@dive.com',address:'kabuga', tel_phone:'23456', password: '123456', password_confirmation: '123456' )
User.create!(first_name: 'janvier', email: 'janvieruyyuuyu@dive.com',address:'kabuga', tel_phone:'23456', password: '123456', password_confirmation: '123456' )
User.create!(first_name: 'mutuyimana', email: 'mutuyimanajhhjjhj@dive.com',address:'kabuga', tel_phone:'23456', password: '123456', password_confirmation: '123456' )


# 30.times do |n|
#     email = Faker::Internet.email
#     password = "password"
#     first_name = "janvier"
#     Faker::Address.city #=> "California"
#     User.create!( 
#                     email: email,
#                  password: password,
#                  password_confirmation: password,
#                  )
#   end