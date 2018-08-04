class AddColumnsToListing < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :address_city, :string
    add_column :listings, :address_country, :string
    add_column :listings, :address_zip_code, :string
    add_column :listings, :photo, :string
  end
end
