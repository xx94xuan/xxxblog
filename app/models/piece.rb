class Piece
  include Mongoid::Document

  include Decorators::Status

  field :title, type: String
  field :body, type: String
  field :published, type: Boolean, default: false
  field :updated_at, type: DateTime
  field :created_at, type: DateTime

  belongs_to :user

  index(updated_at: -1)
end
