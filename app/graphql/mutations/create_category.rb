module Mutations
  class CreateCategory < BaseMutation
    description 'カテゴリーを作成する'

    field :category, Types::CategoryType, null: false

    argument :name, String, required: true

    def resolve(**params)
      category = Category.create!(params)
      { category: category }
    end
  end
end
