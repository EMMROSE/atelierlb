class Work < ApplicationRecord
  has_one_attached :cover
  has_many_attached :previews

  validates :title, presence: true
  validates :category, presence: true
end
