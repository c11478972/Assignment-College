class Raceentry < ActiveRecord::Base
	belongs_to :customer
	belongs_to :race
	belongs_to :vehicle
end
