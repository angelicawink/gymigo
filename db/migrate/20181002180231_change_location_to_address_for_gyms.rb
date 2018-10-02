class ChangeLocationToAddressForGyms < ActiveRecord::Migration[5.2]
  def change
    rename_column :gyms, :location, :address
  end
end
