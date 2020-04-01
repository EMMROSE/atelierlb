class Work < ApplicationRecord
  CATEGORIES = ['charpente', 'vitrine', 'verrière', 'sur-mesure', 'agencement']
  has_one_attached :cover
  has_many_attached :previews

  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  #pg search
  include PgSearch::Model
  pg_search_scope :search_by_title_category,
    against: [ :title, :category ],
    using: {
      tsearch: { prefix: true }
    }
end
