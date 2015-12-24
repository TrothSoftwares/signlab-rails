class SiteimageSerializer < ActiveModel::Serializer
  attributes :id ,:description ,:url ,:fullurl
  belongs_to :item

  def url
    object.url
  end


# FIXME:  this url should be dymanic 
  def fullurl
     'http://localhost:3000' + object.url.to_s
  end
end
