class Changecolomnnill < ActiveRecord::Migration[5.2]
  change_column :posts, :categories, :string, null: false
  change_column :posts, :content, :text, null: false
  change_column :posts, :tittle, :string, null: false
  change_column :users, :tel_phone, :string 
  change_column :users, :first_name, :string
  change_column :users, :email, :string, null: false
  change_column :users, :address, :string
  
end
