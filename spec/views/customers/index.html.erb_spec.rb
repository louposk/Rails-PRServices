require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :name => "Name",
        :email => "Email",
        :address => "Address",
        :tel => "Tel",
        :afm => "Afm"
      ),
      stub_model(Customer,
        :name => "Name",
        :email => "Email",
        :address => "Address",
        :tel => "Tel",
        :afm => "Afm"
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Afm".to_s, :count => 2
  end
end
