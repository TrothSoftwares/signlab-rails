class ItemSerializer < ActiveModel::Serializer
  attributes :id , :dimensions, :description ,:unit , :rate , :amount ,:surveydetails ,:technique ,:material , :team , :designspecifications  , :designnotes ,:versions
  has_many :siteimages
  has_many :designimages
  belongs_to :project
  belongs_to :itemtype
  belongs_to :jobtype

  def versions
    object.versions.map{|v| {
       "changeset": v.changeset,
       "whodunnit": User.find(v.whodunnit).email,
       "created_at": v.created_at
       }}
  end

end
