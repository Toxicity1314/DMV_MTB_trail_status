class CreateIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :issues do |t|
      t.belongs_to :trail, null: false, foreign_key: true
      t.text :issue

      t.timestamps
    end
  end
end
