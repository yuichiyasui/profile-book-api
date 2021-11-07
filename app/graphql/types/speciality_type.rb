module Types
  class SpecialityType < Types::BaseObject
    description '特技'

    field :id, ID, 'ID', null: false
    field :name, String, '特技名', null: false
    field :category_id, Integer, 'カテゴリーID', null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, '作成日時', null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, '更新日時', null: false

    field :category, Types::CategoryType, 'カテゴリー情報', null: false
  end
end
