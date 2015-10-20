class Listing < ActiveRecord::Base
	belongs_to :user
	belongs_to :location

	validates_presence_of :startDateTime, :endDateTime, :space_type, :half_day, :full_day, :week, :month
	validates_numericality_of :min_to_campus, only_integer: true, greater_than: 0
	validates_date :startDateTime, :endDateTime
	validates_date :startDateTime, :on_or_after => lambda { Date.today }, :on_or_after_message => "Cannot be in the past", on:  :create
  	validates_date :endDateTime, :on_or_after => :startDateTime, :on_or_after_message => "Cannot be in the past", on:  :create

	scope :active, -> { where(active: true) }
	scope :chronological, -> { order('startDateTime','endDateTime') }
	scope :closest, -> { order('min_to_campus') }
end
