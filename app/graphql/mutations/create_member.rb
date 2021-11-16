module Mutations
  class CreateMember < BaseMutation
    description 'メンバーを作成する'

    field :member, Types::MemberType, 'メンバー情報', null: false

    argument :first_name, String, '名', required: true
    argument :first_name_hiragana, String, '名(ふりがな)', required: true
    argument :last_name, String, '姓', required: true
    argument :last_name_hiragana, String, '姓(ふりがな)', required: true
    argument :handle_name, String, 'ハンドルネーム', required: true
    argument :home_prefecture_id, Integer, '出身都道府県ID', required: true
    argument :residence_prefecture_id, Integer, '現住都道府県ID', required: true
    argument :birthday, GraphQL::Types::ISO8601DateTime, '誕生日', required: true
    argument :comment, String, 'コメント', required: true

    argument :hobby_ids, [Integer], '趣味ID一覧', required: true
    argument :speciality_ids, [Integer], '特技ID一覧', required: true

    def resolve(**params)
      member = Member.create!(params)
      { member: member }
    end
  end
end
