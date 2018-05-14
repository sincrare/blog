class CreateArticleTags < ActiveRecord::Migration[5.1]
  def change
    create_table :article_tags do |t|
      t.references :article,  index: true, foreign_key: true
      t.references :tag,  index: true, foreign_key: true

      t.timestamps
    end
  end
end
