class CreateArticleImages < ActiveRecord::Migration[5.1]
  def change
    create_table :article_images do |t|
      t.integer :article_id
      t.string :image

      t.timestamps
    end
  end
end
