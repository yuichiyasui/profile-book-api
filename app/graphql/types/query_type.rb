module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :member, Types::MemberType, null: false do
      description 'メンバーを主キーで検索する'
      argument :id, ID, required: true
    end

    def member(id:)
      Member.find(id)
    end
  end
end
