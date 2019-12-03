# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.upto(20) do |i|
    User.create(first_name: "janvier#{i}",
    email: "janvier@dive.code#{i}",
    address: "kabuga#{i}",
    tel_phone:  "7328738728738#{i}",
    password:   "123456#{i}",
    password_confirmation:  "123456#{i}" )
 end