module Mutations
  class CreateCategory < BaseMutation
    field :category, Types::CategoryType, null: false

    argument :name, String, required: true

    def resolve(**params)
      category = Category.create!(params)
      { category: category }
    end
  end
end
