class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.string :content
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
