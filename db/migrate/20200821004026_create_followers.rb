class CreateFollowers < ActiveRecord::Migration[6.0]
  def change
    create_table :followers do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :handle

      t.timestamps
    end
  end
end
