class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.bigint :article_id,  index: true, foreign_key: true
      t.text :comment
      t.integer :user_id, foreign_key: true

      t.timestamps
    end
  end
end
