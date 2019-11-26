class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :second_name, :string
    add_column :users, :address, :string
    add_column :users, :tel_phone, :string
    add_column :users, :type, :integer
  end
end
