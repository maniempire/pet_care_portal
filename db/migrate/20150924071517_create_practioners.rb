class CreatePractioners < ActiveRecord::Migration
  def change
    create_table :practioners do |t|
      t.string :name, :limit => 25, null: false
      t.string :address
      t.string :state
      t.string :city
      t.integer :zip, :limit => 5
      t.string :school_degree_received_from
      t.integer :years_in_practice, :limit => 3
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
