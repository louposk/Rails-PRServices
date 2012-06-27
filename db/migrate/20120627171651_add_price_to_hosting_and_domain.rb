class AddPriceToHostingAndDomain < ActiveRecord::Migration
  def change
	add_column :hostings, :price, :integer  
	add_column :domains, :price, :integer  

end
end
