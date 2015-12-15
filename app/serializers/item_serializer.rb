class ItemSerializer < ActiveModel::Serializer
  attributes :id , :dimensions, :description
  belongs_to :project
  belongs_to :itemtype
  belongs_to :jobtype
end
