class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :status
      t.text :content
      t.integer :categories

      t.timestamps
    end
  end
end
