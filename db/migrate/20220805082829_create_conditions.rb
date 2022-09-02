class CreateConditions < ActiveRecord::Migration[6.1]
  def change
    create_table :conditions do |t|
      t.integer :budget
      t.string :area
      t.string :walking_distans_from_station
      t.string :exclusive_area
      t.string :floor_plan
      t.string :age_of_a_building
      t.string :detail
      t.text :others
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
