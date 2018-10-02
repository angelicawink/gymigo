class AddZipcodeToGyms < ActiveRecord::Migration[5.2]
  def change
    add_column :gyms, :zipcode, :string
  end
end
