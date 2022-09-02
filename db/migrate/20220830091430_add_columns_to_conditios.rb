class AddColumnsToConditios < ActiveRecord::Migration[6.1]
  def change
    rename_column :conditions, :detail, :detail_1
    add_column :conditions, :detail_2, :string
    add_column :conditions, :detail_3, :string 
  end
end
