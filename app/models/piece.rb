class Piece
  include Mongoid::Document

  field :title, type: String
  field :body, type: String
  field :updated_at, type: DateTime
  field :created_at, type: DateTime

  belongs_to :user, dependent: :nullify

  index(updated_at: -1)
end
