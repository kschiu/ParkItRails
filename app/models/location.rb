class Location < ActiveRecord::Base
mount_uploader :photo, PhotoUploader
	
	has_many :listings
	has_many :reviews

	validates_presence_of :street_address, :city, :state, :zip_code
	validates_numericality_of :min_to_campus, only_integer: true, greater_than: 0
	validates_numericality_of :num_cars, only_integer: true, greater_than: 0

	scope :active, -> { where(active: true) }

end
