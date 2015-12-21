class Project < ActiveRecord::Base
  belongs_to :customer
  belongs_to :agent
  has_many :enquiries
  has_many :items
  has_one :quotation
end
