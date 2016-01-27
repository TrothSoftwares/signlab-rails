class Project < ActiveRecord::Base
  has_paper_trail
  belongs_to :customer
  belongs_to :agent
  has_one :enquiry , :dependent => :destroy
  has_many :items , :dependent => :destroy
  has_one :quotation , :dependent => :destroy
end
