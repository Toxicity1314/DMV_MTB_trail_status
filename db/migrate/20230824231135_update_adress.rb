class UpdateAdress < ActiveRecord::Migration[7.0]
  def change
    add_column :trail_systems, :street, :string
    add_column :trail_systems, :city, :string
    add_column :trail_systems, :state, :string
    add_column :trail_systems, :zipcode, :string
    remove_column :trail_systems, :address
  end
end
