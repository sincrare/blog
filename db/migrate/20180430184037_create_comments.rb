class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :article_id
      t.text :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
