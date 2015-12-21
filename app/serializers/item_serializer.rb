class ItemSerializer < ActiveModel::Serializer
  attributes :id , :dimensions, :description ,:unit , :rate , :amount
  belongs_to :project
  belongs_to :itemtype
  belongs_to :jobtype
  # has_and_belongs_to_many :jobtypes
end
