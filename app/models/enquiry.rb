class Enquiry < ActiveRecord::Base
  has_paper_trail
  belongs_to :project
end
