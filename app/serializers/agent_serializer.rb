class AgentSerializer < ActiveModel::Serializer
  attributes :id, :name, :contactname, :contactno, :othcontactno, :othrefdetails
    has_many :projects # ,  embed: :ids, key: "projects", include: true
end
