class CreateHostings < ActiveRecord::Migration
  def change
    create_table :hostings do |t|
      t.string :name
      t.date :registration
      t.date :expiration
      t.date :renewal
      t.integer :customer_id

      t.timestamps
    end
  end
end
