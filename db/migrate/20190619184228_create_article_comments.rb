class CreateArticleComments < ActiveRecord::Migration[6.0]
  def change
    create_table :article_comments do |t|
      t.belongs_to :article, index: true

      t.timestamps
    end
  end
end
