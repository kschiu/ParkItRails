class Purchase < ActiveRecord::Base
	after_save :deactivate_listing

	belongs_to :user
	belongs_to :listing

	validates_presence_of :date
	validates_date :date

	private
	def deactivate_listing
		listing = Listing.find(self.listing_id)
		listing.active = false
		listing.save
	end
end
