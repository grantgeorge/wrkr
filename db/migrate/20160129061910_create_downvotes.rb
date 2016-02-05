class CreateDownvotes < ActiveRecord::Migration
  def change
    create_table :downvotes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :downvotable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
