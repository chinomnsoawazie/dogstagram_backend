class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :handle
      t.string :city
      t.string :state
      t.string :country
      t.string :password_digest

      t.timestamps
    end
  end
end
