module Mutations
  class CreateTemporaryUser < BaseMutation
    description '仮ユーザー登録を行う'

    field :temporary_user, Types::TemporaryUserType, '仮ユーザー情報', null: false

    argument :email, String, 'メールアドレス', required: true
    argument :password, String, 'パスワード', required: true
    argument :password_confirmation, String, '再確認用パスワード', required: true

    def resolve(**params)
      params[:uuid] = SecureRandom.uuid
      begin
        temporary_user = TemporaryUser.create!(params)
        { temporary_user: temporary_user }
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new(e, extensions: { code: 'RECORD_INVALID' })
      end
    end
  end
end
