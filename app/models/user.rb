class User
  include Mongoid::Document
  field :name, type: String
  field :password, type: String
  field :created_at, type: DateTime
  field :updated_at, type: DateTime

  has_many :events, dependent: :destroy
  has_many :pieces, dependent: :nullify
end
