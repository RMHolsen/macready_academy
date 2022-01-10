class CreateUser < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username 
      t.string :email
      t.string :password_digest
      t.text :profile
      t.string :display_name 
      t.string :goal
    end
  end
end
