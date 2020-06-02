class Startup < ApplicationRecord
  has_many :applications, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :startup_sectors, dependent: :destroy

  has_many :sectors, through: :startup_sectors
end
