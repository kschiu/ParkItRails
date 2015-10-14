class Listing < ActiveRecord::Base
	belongs_to :user
	belongs_to :location

	validates_presence_of :startDateTime, :endDateTime
end
