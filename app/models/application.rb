class Application < ApplicationRecord
  # code below is for the upload of the pdf document of the student
  has_one_attached :document
  belongs_to :user
  belongs_to :startup
end
