class ItemSerializer < ActiveModel::Serializer
  attributes :id , :dimensions, :description
  belongs_to :project
  belongs_to :itemtype
  has_many :jobtypes
  # has_and_belongs_to_many :jobtypes
end
