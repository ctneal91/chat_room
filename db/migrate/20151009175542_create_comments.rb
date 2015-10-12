class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :entry
      t.integer :room_id

      t.timestamps null: false
    end
  end
end
