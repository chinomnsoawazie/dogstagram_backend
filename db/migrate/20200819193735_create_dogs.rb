class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :breed
      t.integer :age
      t.string :temprament

      t.timestamps
    end
  end
end
