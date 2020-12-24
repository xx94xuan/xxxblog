class Event
  include Mongoid::Document

  field :name, type: String
  field :start_time, type: DateTime
  field :end_time, type: DateTime
  field :description, type: String
  field :updated_at, type: DateTime
  field :created_at, type: DateTime

  index(time: -1)
end
