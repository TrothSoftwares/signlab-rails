class QuotationSerializer < ActiveModel::Serializer
  attributes :id ,:date ,:subject ,:body

  belongs_to :project

end
