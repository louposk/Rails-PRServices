class Customer < ActiveRecord::Base
  attr_accessible :address, :afm, :email, :name, :tel
end
