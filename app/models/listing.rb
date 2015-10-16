class Listing < ActiveRecord::Base
	belongs_to :user
	belongs_to :location

	validates_presence_of :startDateTime, :endDateTime
	validates_numericality_of :min_to_campus, only_integer: true, greater_than: 0
	validates_date :startDateTime, :endDateTime

	scope :active, -> { where(active: true) }
	scope :chronological, -> { order('startDateTime','endDateTime') }
	scope :closest, -> { order('min_to_campus') }
end
