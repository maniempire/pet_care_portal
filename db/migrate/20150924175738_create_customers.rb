class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :contact_no
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
