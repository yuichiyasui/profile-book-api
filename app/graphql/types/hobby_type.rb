module Types
  class HobbyType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :category_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :category, Types::CategoryType, null: true
  end
end
