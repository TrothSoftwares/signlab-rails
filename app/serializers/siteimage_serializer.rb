class SiteimageSerializer < ActiveModel::Serializer
  attributes :id ,:description ,:url ,:fullurl ,:thumburl
  belongs_to :item

  def url
    object.url
  end


  # FIXME:  this url should be dymanic
  def fullurl
    if Rails.env == 'development'
      'http://localhost:3000' + object.url.to_s
    else
      'http://signlab.herokuapp.com' + object.url.to_s
    end
  end

  def thumburl
    if Rails.env == 'development'
      'http://localhost:3000' + object.url.thumb.to_s
    else
      'http://signlab.herokuapp.com' + object.url.thumb.to_s
    end
  end


  # def default_url
  #     "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  #  end


end
