class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :session_token
  

      t.timestamps
      # add_index :username, :session_token, unique: true
    end
  end
end
