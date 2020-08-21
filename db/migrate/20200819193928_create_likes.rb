class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.belongs_to :dog, null: false, foreign_key: true
      t.string :likerName
      t.string :likerHandle
      t.integer :liker_user_id
      
      t.timestamps
    end
  end
end
