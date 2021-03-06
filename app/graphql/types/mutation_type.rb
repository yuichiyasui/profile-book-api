module Types
  class MutationType < Types::BaseObject
    field :sign_up, mutation: Mutations::SignUp
    field :confirm_registration_with_token, mutation: Mutations::ConfirmRegistrationWithToken
    field :create_speciality, mutation: Mutations::CreateSpeciality
    field :create_hobby, mutation: Mutations::CreateHobby
    field :create_member, mutation: Mutations::CreateMember
    field :create_category, mutation: Mutations::CreateCategory
  end
end
