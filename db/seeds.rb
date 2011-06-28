# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
puts 'SETTING UP ADMIN USERS'

user1 = User.create!(:first_name => 'Admin1', :last_name => 'admin', :user_type => 3, :email => 'admin1@test.com', :password => 'admin123', :password_confirmation => 'admin123')

puts 'New user created: ' << user1.first_name

user2 = User.create!(:first_name => 'Admin2', :last_name => 'admin', :user_type => 3, :email => 'admin2@test.com', :password => 'admin123', :password_confirmation => 'admin123')

puts 'New user created: ' << user2.first_name
