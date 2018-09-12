class RouteSerializer < ActiveModel::Serializer
  attributes :id, :service_id, :verb, :url_pattern, :version
end
