module Mutations
  class CreateSpeciality < BaseMutation
    description '特技を作成する'

    field :speciality, Types::SpecialityType, '特技情報', null: false

    argument :name, String, '特技名', required: true
    argument :category_id, Integer, 'カテゴリーID', required: true

    def resolve(**params)
      speciality = Speciality.create!(params)
      { speciality: speciality }
    end
  end
end
