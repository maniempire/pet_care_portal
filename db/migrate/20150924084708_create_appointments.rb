class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :date_of_visit
      t.integer :pet_id
      t.integer :customer_id
      t.integer :practioner_id
      t.boolean :appointment_reminder
      t.string :reason_for_visit

      t.timestamps null: false
    end
  end
end
