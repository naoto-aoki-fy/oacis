class Mcp
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :value, type: Integer
  field :description, type: String

  validates :name, presence: true, uniqueness: true, length: { minimum: 1 }
  validates :value, presence: true
end
