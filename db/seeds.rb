# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def create_devan
  puts "Creating Devan's account"
  User.create!(email: "devan.moylan@backyardlion.com", password: "Test1234", password_confirmation: "Test1234")
end

create_devan