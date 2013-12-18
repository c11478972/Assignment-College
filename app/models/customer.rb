class Customer < ActiveRecord::Base
	belongs_to :location
	has_many :vehicles
	has_many :raceentries
	has_many :journals
	has_many :posts, :dependent => :destroy
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	validates :location_id, presence: true
	validates :email, uniqueness: true
	validates :email, format:{with: /\A([^@\s]+)@((?:[-a-z0+9]+\.)+[a-z]{2,})\Z/}
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	has_secure_password
	
	before_create { generate_token(:auth_token)}
	
	def send_password_reset
		generate_token(:password_reset_token)
		self.password_reset_sent_at = Time.zone.now
		#self.password = "aaaa"
		save!
		CustomerMailer.password_reset(self).deliver
	end
	
	def generate_token(column)
		begin
			self[column] = SecureRandom.urlsafe_base64
		end while Customer.exists?(column => self[column])
	end
	
	def fullname
		fullname = self.first_name + " " + self.last_name
	end
	
	def fulladdress
		fulladdress = self.address + " " + self.location.postal_code #How to get the location name
	end
	#def self.setEditor(customer) #class method Note that the self is the same as the  
	#	unless customer.nil?
	#		if customer.posts.count >= 3
	#			customer.editor = true 
	#			customer.save		#Would not be saved automatically 
	#		end
	#	end
	#end
end
