class User < ActiveRecord::Base
  has_many :listings, :foreign_key => 'host_id'
  has_many :reservations, through: :listings, :foreign_key => 'host_id'
  has_many :reservations, through: :listings, :foreign_key => 'guest_id'

  has_many :reviews, :foreign_key => 'guest_id'

  has_many :trips, :class_name => :Reservation, :foreign_key =>'guest_id'
  # def trips
  #   Reservation.all.map do |trip|
  #     trip.guest_id == self.id
  #   end
  # end
end