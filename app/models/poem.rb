class Poem < ApplicationRecord
  has_one_attached :image
  has_many :favorites, dependent: :destroy
  validates :image, presence: true
  validates :body, presence: true
  
  def display_image
    image.variant(resize_to_limit: [400, 1000])
  end
end
