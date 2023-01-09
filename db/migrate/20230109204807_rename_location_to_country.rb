class RenameLocationToCountry < ActiveRecord::Migration[7.0]
  def change
    rename_column :colleges, :location, :country
  end
end
