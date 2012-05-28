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

  validates :name,  presence: true ,length: { maximum: 50 }
  validates :email, presence: true
end
