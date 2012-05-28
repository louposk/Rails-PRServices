require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :name => "Name",
      :email => "Email",
      :address => "Address",
      :tel => "Tel",
      :afm => "Afm"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Address/)
    rendered.should match(/Tel/)
    rendered.should match(/Afm/)
  end
end
