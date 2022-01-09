module Types
  class UserType < Types::BaseObject
    description 'ユーザー情報'

    field :id, ID, null: false
    field :email, String, null: false
    field :authentication_token, String, null: false

    def authentication_token
      if object.gql_id != context[:current_user]&.gql_id
        raise GraphQL::UnauthorizedFieldError,
              'Unable to access authentication_token'
      end

      object.authentication_token
    end
  end
end
