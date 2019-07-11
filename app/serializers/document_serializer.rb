class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :extension, :content, :created_at
end
