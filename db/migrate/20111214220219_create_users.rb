class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :twitter
      t.string :facebook
      t.string :gplus
      t.string :linkedin
      t.string :skype
      t.string :remember_me_token
      t.string :password_token
      t.datetime :password_token_expiration
      t.integer :company_id
      t.integer :flags, default: 0

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
    add_index :users, :remember_me_token
    add_index :users, :password_token
    add_index :users, :password_token_expiration
    add_index :users, [:password_token,:password_token_expiration]
    add_index :users, :company_id
    add_index :users, :flags
  end
end