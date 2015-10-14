class Purchase < ActiveRecord::Base
	belongs_to :user
	belongs_to :listing

	validates_presence_of :date
end
