module Types
  class CategoryType < Types::BaseObject
    description 'カテゴリー'

    field :id, ID, 'ID', null: false
    field :name, String, 'カテゴリー名', null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, '作成日時', null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, '更新日時', null: false
  end
end
