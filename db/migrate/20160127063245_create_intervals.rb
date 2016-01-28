class CreateIntervals < ActiveRecord::Migration
  def change
    create_table :intervals do |t|
      t.integer :time
      t.references :exercise, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
