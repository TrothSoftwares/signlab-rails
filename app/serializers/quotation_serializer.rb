class QuotationSerializer < ActiveModel::Serializer
  attributes :id ,:date ,:subject ,:body , :versions ,:payment , :delivery , :power , :storetext , :note 

  belongs_to :project


  def versions
    object.versions.map{|v| {
       "changeset": v.changeset,
       "whodunnit": User.find(v.whodunnit).email,
       "created_at": v.created_at
       }}
  end

end
