class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :startup

  validates :user_id, uniqueness: { scope: :startup_id }
end
