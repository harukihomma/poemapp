class Poem < ApplicationRecord
  has_one_attached :image
  has_many :favorites, dependent: :destroy
  validates :image, presence: true
  validates :body, presence: true
end
