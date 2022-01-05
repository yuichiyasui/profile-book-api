module Mutations
  class CreateUser < BaseMutation
    description 'ユーザー登録を完了する'

    field :user, Types::UserType, 'ユーザー情報', null: false

    argument :uuid, String, 'UUID', required: true

    def resolve(uuid:)
      temporary_user = TemporaryUser.find_by(uuid: uuid)
      unless temporary_user
        GraphQL::ExecutionError.new('内部的なエラーのため登録できませんでした。', extensions: { code: 'INTERNAL_SERVER_ERROR' })
      end
      user = User.new(email: temporary_user.email, password_digest: temporary_user.password_digest, role: 0)
      user.save!
      temporary_user.destroy
      { user: user }
    end
  end
end
