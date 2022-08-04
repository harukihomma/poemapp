class Poem < ApplicationRecord
  attachment :image
  has_many :favorites, dependent: :destroy
end
