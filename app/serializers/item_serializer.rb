class ItemSerializer < ActiveModel::Serializer
  attributes :id , :dimensions, :description ,:unit , :rate , :amount ,:surveydetails ,:technique ,:material , :team , :designspecifications  , :designnotes #, :siteimages
  has_many :siteimages
  has_many :designimages
  belongs_to :project
  belongs_to :itemtype
  belongs_to :jobtype
  # has_and_belongs_to_many :jobtypes

  # def siteimages
  #   # ItemSerializer.new(object.all)
  #   object.siteimages
  # end
end
