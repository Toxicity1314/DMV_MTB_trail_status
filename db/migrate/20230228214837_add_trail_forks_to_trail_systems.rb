class AddTrailForksToTrailSystems < ActiveRecord::Migration[7.0]
  def change
    add_column :trail_systems, :trail_forks_id, :string
  end
end
