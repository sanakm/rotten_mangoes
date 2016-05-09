# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(
  email: "marcus@employee.com",
  password: '1111111',
  password_confirmation: "1111111",
  firstname: "Marcus",
  lastname: "Lune",
  is_admin: true
  )

User.create!(
  email: "julie@notadmin.com",
  password: '2222222',
  password_confirmation: "2222222",
  firstname: "Julie",
  lastname: "Malone",
  is_admin: false
  )


