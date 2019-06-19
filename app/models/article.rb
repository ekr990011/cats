class Article < ApplicationRecord
  has_rich_text :article_body
  has_many :article_comments, dependent: :destroy
end
