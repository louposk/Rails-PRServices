class Hosting < ActiveRecord::Base
  attr_accessible :customer_id, :expiration, :name, :registration, :renewal
  belongs_to :customer

  validates :name,  presence: true
  validates :customer_id, presence: true
end
