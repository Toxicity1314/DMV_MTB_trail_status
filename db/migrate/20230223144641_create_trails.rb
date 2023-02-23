class CreateTrails < ActiveRecord::Migration[7.0]
  def change
    create_table :trails do |t|
      t.belongs_to :trail_system, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
