class CreateRainTotals < ActiveRecord::Migration[7.0]
  def change
    create_table :rain_totals do |t|
      t.float :precipitation_last_hour
      t.integer :hour
      t.belongs_to :trail_system, null: false, foreign_key: true

      t.timestamps
    end
  end
end
