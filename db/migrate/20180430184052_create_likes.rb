class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :article_id
      t.integerrails :user_id
      t.string :g
      t.string :scaffold_controller
      t.string :admin/articles

      t.timestamps
    end
  end
end
