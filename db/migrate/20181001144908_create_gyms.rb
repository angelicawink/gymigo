class CreateGyms < ActiveRecord::Migration[5.2]
  def change
    create_table :gyms do |t|
      t.string :name
      t.text :hours
      t.string :location
      t.text :rates

      t.timestamps
    end
  end
end
