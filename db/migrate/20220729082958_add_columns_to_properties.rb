class AddColumnsToProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :company_contact_info, :string
    add_column :properties, :property_url, :text
  end
end
