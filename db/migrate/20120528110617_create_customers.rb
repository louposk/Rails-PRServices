class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :tel
      t.string :afm
      t.string :antiprosopos

      t.timestamps
    end
  end
end
