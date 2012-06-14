class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :name
      t.date :registration
      t.date :expiration
      t.date :renewal
      t.string :dns1
      t.string :dns2
      t.string :epp
      t.string :status
      t.integer :customer_id


      t.timestamps
    end
  end
end
