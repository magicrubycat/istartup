class Application < ApplicationRecord
  # code below is for the upload of the pdf document of the student
  has_one_attached :document
  belongs_to :user
  belongs_to :startup

  def content
    "
    #{self.startup.name}
    #{self.startup.address} Dear Hiring Manager, I'm writing to express my interest in the Web Content Manager position listed on Monster.com. I have experience building large, consumer-focused health-based content sites. While much of my experience has been in the business world, I understand the social value of this sector and I am confident that my business experience will be an asset to your organization. My responsibilities have included the development and management of: website editorial voice and style; editorial calendars; and the daily content programming and production for various websites. I have worked closely with healthcare professionals and medical editors to help them to provide the best possible information to a consumer audience of patients. I have also helped physicians to use their medical content to write user-friendly and easily comprehensible text. Experience has taught me how to build strong relationships with all departments in an organization. I have the ability to work within a team as well as cross-team. I can work with web engineers to resolve technical issues and implement technical enhancements. I am confident working with development departments to implement design and functional enhancements, and to monitor site statistics and conduct search engine optimization. Thank you for your consideration.
    #{self.user.first_name} #{self.user.last_name}
    #{self.user.email}"
  end
end
