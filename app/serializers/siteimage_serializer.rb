class SiteimageSerializer < ActiveModel::Serializer
  attributes :id ,:description ,:url ,:fullurl ,:thumburl
  belongs_to :item

  def url
    object.url
  end


  def fullurl
       object.url.to_s
  end


  def thumburl
       object.url.thumb.to_s
  end



  # def fullurl
  #   if Rails.env == 'development'
  #     object.url.to_s
  #   else
  #     object.url.to_s
  #   end
  # end
  #
  # def thumburl
  #   if Rails.env == 'development'
  #      object.url.thumb.to_s
  #   else
  #     object.url.thumb.to_s
  #   end
  # end

end
