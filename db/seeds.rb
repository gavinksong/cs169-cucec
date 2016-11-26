# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# students = Student.create([ {email: "baoskee@gmail.com", password: "foobar"}])
# mentors = Mentor.create([email: "emilioaurea@gmail.com", password: "foobar"])

# only one admin
Admin.create!( {
  :email => "honglin8@gmail.com",
  :password => "cucec2016alpha",
  :password_confirmation => "cucec2016alpha"
})