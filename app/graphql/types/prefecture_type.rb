module Types
  class PrefectureType < Types::BaseObject
    description '都道府県'

    field :id, ID, 'ID', null: false
    field :name, String, '都道府県名', null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, '作成日時', null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, '更新日時', null: false
  end
end
