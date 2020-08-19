class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.string :likerName
      t.integer :liker_user_id
      
      t.timestamps
    end
  end
end
