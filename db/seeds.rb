# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pet.destroy_all
Owner.destroy_all

o1 = Owner.create({
  email: 'email@email.com',
  password: 'letmeinplease',
  password_confirmation: 'letmeinplease',
  name: "Barry"
})

o2 = Owner.create({
  email: 'email2@email.com',
  password: 'letmeinplease',
  password_confirmation: 'letmeinplease',
  name: "Larry"
})


o2.pets.create({name: 'fluffy', breed:'poodle'})
o1.pets.create({name: 'Sock', breed:'snake'})