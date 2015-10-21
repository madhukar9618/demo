class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date_of_visit
      t.string :pet
      t.string :customer
      t.string :reminder_of_appointment
      t.string :reason_for_visit
      t.references :doctor, index: true, foreign_key: true
      t.references :pet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
