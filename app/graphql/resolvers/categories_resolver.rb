module Resolvers
  class CategoriesResolver < Resolvers::BaseResolver
    description 'カテゴリー一覧を取得する'
    type [Types::CategoryType], null: false

    def resolve
      Category.all
    end
  end
end
