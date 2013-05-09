class AddImageToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :imageURL, :string
  end
end
