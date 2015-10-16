class Purchase < ActiveRecord::Base
	after_create :deactivate_listing

	belongs_to :user
	belongs_to :listing

	validates_presence_of :date
	validates_date :date

	private
	def deactivate_listing
		self.listing.active = false
	end
end
