module Types
  class TemporaryUserType < Types::BaseObject
    description '仮ユーザー'

    field :id, ID, 'ID', null: false
    field :email, String, 'メールアドレス', null: false
    field :uuid, String, 'UUID', null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
