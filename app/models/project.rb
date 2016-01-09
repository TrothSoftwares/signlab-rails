class Project < ActiveRecord::Base
  belongs_to :customer
  belongs_to :agent
  has_many :enquiries  , :dependent => :destroy
  has_many :items , :dependent => :destroy
  has_one :quotation , :dependent => :destroy
end
