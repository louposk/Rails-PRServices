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

require 'spec_helper'

describe Customer do

  before do 
  	@customer = Customer.new(name: "Example customer", email: "customer@example.com")
  end

  subject { @customer }

  it { should respond_to(:name) }
  it { should respond_to(:email) }

  it { should be_valid }

  describe "when name is not present" do
    before { @customer.name = " " }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @customer.email = " " }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @customer.name = "a" * 51 }
    it { should_not be_valid }
  end
end
