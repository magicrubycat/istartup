class Application < ApplicationRecord
  # code below is for the upload of the pdf document of the student
  has_one_attached :document
  belongs_to :user
  belongs_to :startup

  def content
    if read_attribute(:content).blank?
      default_content
    else
      read_attribute(:content)
    end
  end

  def default_content
    "#{Date.today.to_date.to_formatted_s(:long)}\n#{self.startup.name} \n#{self.startup.address}\nDear Madam/Sir,\n
    I’m writing to you regarding the internship role that opened up recently. I came across this internship on iStartUP platform, and was delighted to find that my academic achievements meet all of the necessary requirements. I am seeking a challenging and rewarding internship, which is why I was drawn to this exciting opportunity.\n
    During my studies, I have acquired various skills as well as an increased inquisitiveness for everything related to your company’s focus and entrepreneurship.  As part of my future studies, I’d like to explore topics in the following areas:\n
    Idea exploration and validation\n
    - Digital Marketing\n
    - Customer Survey\n
    - Fundraising\n
    - Product development\n
    I would be delighted to have an opportunity to personally interview with you. Please accept the enclosed resume and feel free to contact me at your earliest convenience.  I appreciate your time and consideration.\n
    Yours sincerely,\n
    #{self.user.first_name} #{self.user.last_name} \n#{self.user.email}"
  end
end
