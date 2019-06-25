class CatComment < ApplicationRecord
  belongs_to :cat
  has_rich_text :body
  validates :body, presence: true
end
