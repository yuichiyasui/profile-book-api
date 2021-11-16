module Types
  class MutationType < Types::BaseObject
    field :create_category, mutation: Mutations::CreateCategory
  end
end
