class CreateArticleAuthorities < ActiveRecord::Migration[5.1]
  def change
    create_table :article_authorities do |t|
      t.references :article, foreign_key: true
      t.references :authority, foreign_key: true

      t.timestamps
    end
  end
end
