class Startup < ApplicationRecord
  # for Cloudinary - in a later stage - depending if we get the API or not. If latter then we have to seed the logos ourselves
  has_one_attached :logo
  has_many :applications, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :startup_sectors, dependent: :destroy

  has_many :users, through: :favorites
  has_many :sectors, through: :startup_sectors

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_all_attributes,
    against: [ :name, :description, :address, :website, :email],
    using: {
      tsearch: { prefix: true } # <-- now `startup in berlin` will return something!
    }
end

# line 16: add also :sector through startup_sectors
