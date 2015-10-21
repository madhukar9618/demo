class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :pet_name
      t.string :type_of_pet
      t.string :breed
      t.integer :age
      t.integer :weight
      t.datetime :date_of_last_visit
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
