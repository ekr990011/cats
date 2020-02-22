class CatPersonality < ApplicationRecord
  extend FriendlyId
  friendly_id :slug
end
