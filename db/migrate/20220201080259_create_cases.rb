class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|
      t.date    :date,               null: false
      t.integer :state_id,           null: false
      t.integer :introducer_id
      t.string  :introducer_name
      t.string  :case_name,          null:false
      t.string  :age
      t.string  :address
      t.integer :household_id,       null:false
      t.integer :place_id,           null:false
      t.integer :economic_status_id, null:false
      t.integer :care_level_id,      null:false
      t.integer :handicap_level_id,  null:false
      t.string  :cost
      t.string  :location
      t.text    :medical_condition
      t.text    :care_condition
      t.text    :remarks
      t.date    :move_in_date
      t.integer :main_fee
      t.integer :other_fee
      t.string  :home_name
      t.references :user,            null: false, foreign_key: true
      t.timestamps
    end
  end
end
