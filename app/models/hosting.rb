# == Schema Information
#
# Table name: hostings
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  registration :date
#  expiration   :date
#  renewal      :date
#  customer_id  :integer
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

class Hosting < ActiveRecord::Base
  attr_accessible :customer_id, :expiration, :name, :registration, :renewal, :status, :price
  belongs_to :customer

  validates :name,  presence: true
  validates :customer_id, presence: true
end
