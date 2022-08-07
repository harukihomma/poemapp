class Poem < ApplicationRecord
  attachment :image
  has_many :favorites, dependent: :destroy
  validates :image, presence: true
  validates :body, presence: true
end
