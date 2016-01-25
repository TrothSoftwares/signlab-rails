class SiteimageSerializer < ActiveModel::Serializer
  attributes :id ,:description ,:url ,:fullurl ,:thumburl
  belongs_to :item

  def url
    object.url
  end


  # FIXME:  this url should be dymanic
  def fullurl
    if Rails.env == 'development'
      object.url.to_s
    else
      'http://signlab-rails.herokuapp.com' + object.url.to_s
    end
  end

  def thumburl
    if Rails.env == 'development'
       object.url.thumb.to_s
    else
      'http://signlab-rails.herokuapp.com' + object.url.thumb.to_s
    end
  end

end
