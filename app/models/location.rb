class Location < ActiveRecord::Base
	has_many :customers
	has_many :service_stations
	has_many :races
	validates :postal_code, presence: true
	validates :postal_code, uniqueness: true
end
