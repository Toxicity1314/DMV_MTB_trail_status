class CreateTrailSystems < ActiveRecord::Migration[7.0]
  def change
    create_table :trail_systems do |t|
      t.string :name
      t.string :trail_map
      t.string :address
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
