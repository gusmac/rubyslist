class AddForeignKeyToListings < ActiveRecord::Migration[5.2]
  def change
    add_reference :listings, :subcategory, foreign_key: true
  end
end
