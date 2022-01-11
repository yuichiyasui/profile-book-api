module Mutations
  class SignUp < GraphqlDevise::Mutations::SignUp
    description 'ユーザー登録する'

    argument :email, String, 'メールアドレス', required: true
    argument :password, String, 'パスワード', required: true
    argument :password_confirmation, String, '再確認用パスワード', required: true

    field :user, Types::UserType, 'ユーザー情報', null: true

    def resolve(email:, **attrs)
      original_payload = super
      original_payload.merge(user: original_payload[:authenticatable])
    end
  end
end
