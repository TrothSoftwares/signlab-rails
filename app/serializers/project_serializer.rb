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





# def itemsversions
#   object.items.map{|item| {
#
#     "versions": item.versions,
#     "lastversion": item.versions.last,
#     "description": item.description,
#
#
#     "changeset":item.versions.map{|v| {
#        "changeset": v,
#        "whodunnit": User.find(v.whodunnit).email,
#        "created_at": v.created_at
#        }},
#       "verdicts": item.versions.each do |v|
#                    v
#                     end
#      }}
# end








#
# def itemsversions
#   itemchanges = Array.new
#   object.items.each do |item|
#
#      item.versions.each do |v|
#     itemchanges << "ssss"dfee
#   end
#
#
#   end
#
#   itemchanges
#
# end
#















end
