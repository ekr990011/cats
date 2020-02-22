class Article < ApplicationRecord
  has_rich_text :article_body
  has_many :article_comments, dependent: :destroy
  extend FriendlyId
  friendly_id  :slug

  default_scope { order(created_at: :desc) }
end
