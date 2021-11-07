module Types
  class MemberType < Types::BaseObject
    description 'メンバー情報'

    field :id, ID, 'ID', null: false
    field :first_name, String, '名', null: false
    field :first_name_hiragana, String, '名(ふりがな)', null: false
    field :last_name, String, '姓', null: false
    field :last_name_hiragana, String, '姓(ふりがな)', null: false
    field :handle_name, String, 'ハンドルネーム', null: false
    field :home_prefecture_id, Integer, '出身都道府県ID', null: false
    field :residence_prefecture_id, Integer, '現住都道府県ID', null: false
    field :birthday, GraphQL::Types::ISO8601DateTime, '誕生日', null: false
    field :comment, String, 'コメント', null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, '作成日時', null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, '更新日時', null: false

    field :home_prefecture, Types::PrefectureType, '出身都道府県', null: false
    field :residence_prefecture, Types::PrefectureType, '現住都道府県', null: false
    field :hobbies, [Types::HobbyType], '趣味一覧', null: false
    field :specialities, [Types::SpecialityType], '特技一覧', null: false
  end
end
