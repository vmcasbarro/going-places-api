class StopSerializer < ActiveModel::Serializer
  attributes :id, :location, :date, :trip_id
end
