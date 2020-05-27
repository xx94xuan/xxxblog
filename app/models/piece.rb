class Piece
  include Mongoid::Document
  field :title, type: String
  field :body, type: String
  field :created_at, type: DateTime
end
