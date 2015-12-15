class EnquirySerializer < ActiveModel::Serializer
  attributes :id, :date, :no, :created_at, :updated_at
  belongs_to :project
end
