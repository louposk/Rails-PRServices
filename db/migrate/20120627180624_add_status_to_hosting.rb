class AddStatusToHosting < ActiveRecord::Migration
  def change
	add_column :hostings, :status, :string  
  end
end
