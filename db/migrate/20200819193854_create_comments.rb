class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.belongs_to :dog, null: false, foreign_key: true
      t.string :handle
      t.string :text
      t.integer :commenter_user_id

      t.timestamps
    end
  end
end
