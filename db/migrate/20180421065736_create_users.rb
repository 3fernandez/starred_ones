class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :avatar_url

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
