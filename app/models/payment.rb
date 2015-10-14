class Payment < ActiveRecord::Base
	belongs_to :user

	validates_presence_of :card_number, :expiration_date, :holder_name, :card_type, :security_code
end
