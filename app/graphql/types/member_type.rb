module Types
  class MemberType < Types::BaseObject
    description 'メンバー情報'

    field :id, ID, null: false
    field :first_name, String, null: false
    field :first_name_hiragana, String, null: false
    field :last_name, String, null: false
    field :last_name_hiragana, String, null: false
    field :handle_name, String, null: false
    field :home_prefecture_id, Integer, null: false
    field :residence_prefecture_id, Integer,  null: false
    field :birthday, GraphQL::Types::ISO8601DateTime, null: false
    field :comment, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime,  null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime,  null: false

    field :home_prefecture, Types::PrefectureType, null: false
    field :residence_prefecture, Types::PrefectureType, null: false
  end
end
