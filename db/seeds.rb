# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if User.where('id = 1').count == 0
  user = User.new(username: 'alex', email: 'alex.peachey@tekukan.com', password='Tekukan Admin!', password_confirmation='Tekukan Admin!')
  user.admin = true
  user.save
end
