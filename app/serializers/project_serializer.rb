class ProjectSerializer < ActiveModel::Serializer
  attributes :id , :name , :location , :status ,:duedate ,:versions
  belongs_to :customer
  belongs_to :agent
  has_one :enquiry
  has_many :items
  has_one :quotation

def versions
  object.versions.map{|v| {
     "changeset": v.changeset,
     "whodunnit": User.find(v.whodunnit).email,
     "created_at": v.created_at
     }}
end







# def changeset
#   # @last = object.previous_version
#   # @content  = @last
#   # @content
# Project.getchangeset
# end

end
