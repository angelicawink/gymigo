class AddCityToGyms < ActiveRecord::Migration[5.2]
  def change
    add_column :gyms, :city, :string
  end
end
