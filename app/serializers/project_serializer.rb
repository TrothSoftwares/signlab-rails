class ProjectSerializer < ActiveModel::Serializer
  attributes :id , :name , :location
  belongs_to :customer
  belongs_to :agent
  has_many :enquiries
  has_many :items
  has_one :quotation




end
