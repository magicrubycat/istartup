class Startup < ApplicationRecord
  # for Cloudinary - in a later stage - depending if we get the API or not. If latter then we have to seed the logos ourselves
  has_one_attached :logo
  has_many :applications, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :startup_sectors, dependent: :destroy

  has_many :sectors, through: :startup_sectors
end
