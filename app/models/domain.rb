# == Schema Information
#
# Table name: domains
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  registration :date
#  expiration   :date
#  renewal      :date
#  dns1         :string(255)
#  dns2         :string(255)
#  epp          :string(255)
#  status       :string(255)
#  customer_id  :integer
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

class Domain < ActiveRecord::Base
  attr_accessible :customer_id, :dns1, :dns2, :epp, :expiration, :name, :registration, 
  :renewal, :status

	belongs_to :customer

	# /\A[\w{3}]+\.[a-z\d\-.].[a-z]+]z/i
 #Regular expression for email
  # VALID_DOMAIN_NAME_REGEX = /\A[\w{3}]+\.[a-z\d\-.].[a-z]+]z/i
  # validates :name,  presence: true, format: { with: VALID_DOMAIN_NAME_REGEX },
  					# uniqueness: true
  validates :name,  presence: true					
  validates :customer_id, presence: true
end
