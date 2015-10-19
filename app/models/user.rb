class User < ActiveRecord::Base
  mount_uploader :picture, PhotoUploader
  has_secure_password

  has_many :locations
  has_many :listings
  has_many :purchases
  has_many :payments

  validates :username, presence: true, uniqueness: { case_sensitive: false}
  validates_presence_of :password, on: :create 
  validates_presence_of :password_confirmation, on: :create 
  validates_confirmation_of :password, message: "does not match"
  validates_length_of :password, minimum: 4, message: "must be at least 4 characters long", allow_blank: true

  accepts_nested_attributes_for :payments, reject_if: lambda { |payment| payment[:card_number].blank? }, allow_destroy: true


  def self.authenticate(username,password)
    find_by_username(username).try(:authenticate, password)
  end
end
