class Race < ActiveRecord::Base
	belongs_to :location
	has_many :raceentries
	validates :racename, :dor, :vehicletype, :racetype, :location, :driverentryfee, :spectatorfee, presence: true
	validates :racename, uniqueness: true
	geocoded_by :fulladdress
	after_validation :geocode, :if => :address_changed?
	mount_uploader :circutmap, CircutmapUploader
	
	def self.search(search)
		search_condition = search + "%"
		find(:all, :conditions=>['racename LIKE ?', search_condition])
	end
	
	def must_have_valid_trailer#doesn't seem to work
		unless trailer.include?("<iframe")
			errors.add(:trailer, "Must have '<iframe' tag")
		end
	end 
	
	def fulladdress
		fulladdress = self.address + " " + self.location.postal_code #How to get the location name
	end
	
	def lastsignupday
		lastsignupday  = dor - 7
	end
	
	def numofdaystoreg
		numofdaystoreg = (lastsignupday - Date.current).to_i
	end
end
