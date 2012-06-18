# == Schema Information
#
# Table name: customers
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  email        :string(255)
#  address      :string(255)
#  tel          :string(255)
#  afm          :string(255)
#  antiprosopos :string(255)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

class Customer < ActiveRecord::Base
  attr_accessible :address, :afm, :email, :name, :tel
  has_many :hostings
  has_many :domains

  #Αν εισαχθούν κεφαλαία τα κάνει μικρά
  before_save { |customer| customer.email = email.downcase }

  validates :name,  presence: true ,length: { maximum: 50 }
  
  #Regular expression for email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
  					uniqueness: true
end
