class Piece
  include Mongoid::Document

  field :title, type: String
  field :body, type: String
  field :updated_at, type: DateTime
  field :created_at, type: DateTime

  index(updated_at: -1)
end
