class Listing < ActiveRecord::Base
    belongs_to :host, :class_name => "User"
    has_many :reservations
    has_many :reviews, through: :reservations
    has_many :guests, through: :reservations
    belongs_to :neighborhood
end