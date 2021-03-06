module Resolvers
  class MemberResolver < Resolvers::BaseResolver
    description 'メンバー'

    type Types::MemberType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      Member.find(id)
    end
  end
end
