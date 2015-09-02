class Listing < ActiveRecord::Base
  has_many :reservations
  has_many :reviews, through: :reservations
  has_many :guests, through: :reservations
  belongs_to :neighborhood
  belongs_to :host, :class_name => "User"
  #we don't need a host table because host is a user, but create a host_id in User class.
end
