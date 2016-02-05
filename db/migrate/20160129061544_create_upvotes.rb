class CreateUpvotes < ActiveRecord::Migration
  def change
    create_table :upvotes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :upvotable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end