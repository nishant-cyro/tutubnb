class Price < ActiveRecord::Base
  attr_accessible :add_guests, :add_price, :daily, :max_guests, :monthly, :weekend, :weekly, :price_id
  belongs_to :place
end