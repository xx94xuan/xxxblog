class User
  include Mongoid::Document
  field :name, type: String
  field :password, type: String
  field :created_at, type: DateTime
  field :updated_at, type: DateTime
end
