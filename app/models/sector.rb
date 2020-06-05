class Sector < ApplicationRecord
  validates :name, presence: true

  has_many :user_sectors, dependent: :destroy
  has_many :startup_sectors, dependent: :destroy
  has_many :users, through: :user_sectors

  #has_many :users, through: :user_sectors
  #has_many :startups, through: :startup_sectors

  INTEREST = ["Automotive", "Videogames", "Health", "Sports", "Tech", "Arts", "HR", "E-commerce", "Education"]
end
