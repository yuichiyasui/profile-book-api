module Mutations
  class CreateHobby < BaseMutation
    description '趣味を作成する'

    field :hobby, Types::HobbyType, '趣味情報', null: false

    argument :name, String, '趣味名', required: true
    argument :category_id, Integer, 'カテゴリーID', required: true

    def resolve(**params)
      hobby = Hobby.create!(params)
      { hobby: hobby }
    end
  end
end
