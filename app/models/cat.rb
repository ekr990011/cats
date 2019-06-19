class Cat < ApplicationRecord
  has_rich_text :article
  has_many :videos, dependent: :destroy
  has_many :cat_comments, dependent: :destroy
end
