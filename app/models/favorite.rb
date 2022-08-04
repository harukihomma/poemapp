class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :poem
  
  validates_uniqueness_of :poem_id, scope: :user_id
end
