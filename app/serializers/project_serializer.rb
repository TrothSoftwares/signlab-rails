class ProjectSerializer < ActiveModel::Serializer
  attributes :id , :name , :location
  belongs_to :customer
  belongs_to :agent



end
