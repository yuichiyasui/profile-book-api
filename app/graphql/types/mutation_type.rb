module Types
  class MutationType < Types::BaseObject
    field :create_hobby, mutation: Mutations::CreateHobby
    field :create_member, mutation: Mutations::CreateMember
    field :create_category, mutation: Mutations::CreateCategory
  end
end
