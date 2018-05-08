class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.bigint :article_id,  index: true, foreign_key: true
      t.bigint :user_id,  index: true, foreign_key: true
      t.timestamps
    end
  end
end
