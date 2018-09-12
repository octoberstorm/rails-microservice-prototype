class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :token
end
