module Resolvers
  class MembersResolver < Resolvers::BaseResolver
    description 'メンバー一覧を取得する'
    type Types::MemberType.connection_type, null: false

    def resolve
      Member.all.order(id: :desc)
    end
  end
end
