#require 'open_uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	Location.delete_all
	open("http://www.michele.me/blog/wp-content/uploads/2007/08/irl32counties.txt")do |locations|
			locations.read.each_line do |location|
			postal_code = location
			Location.create(:postal_code => potal_code)
		end
	end
	#locations = Location.create([{postal_code: 'Dublin'},{postal_code: 'Cork'},{postal_code: 'London Derry'},{postal_code: 'Armagh'},{postal_code: 'Wexford'}])
	#Customer.create(first_name: 'Stephen', last_name:'OKennedy', email: 'stephenoken@gmail.com', 
	#address: '3 Clonasleigh', location_id: 'Dublin', password_digest: 'password')
	
	
