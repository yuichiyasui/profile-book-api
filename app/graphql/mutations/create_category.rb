module Mutations
  class CreateCategory < BaseMutation
    description 'カテゴリーを作成する'

    field :category, Types::CategoryType, 'カテゴリー', null: false

    argument :name, String, 'カテゴリー名', required: true

    def resolve(**params)
      category = Category.create!(params)
      { category: category }
    end
  end
end
