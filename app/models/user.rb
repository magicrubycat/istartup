class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :user_sectors, dependent: :destroy
  has_many :applications, dependent: :destroy
  has_many :favorites, dependent: :destroy

  has_many :sectors, through: :user_sectors
  has_many :startups_as_applicant, through: :applications, source: :startup
  has_many :startups_as_lover, through: :favorites, source: :startup
end
