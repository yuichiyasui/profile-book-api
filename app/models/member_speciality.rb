class MemberSpeciality < ApplicationRecord
  belongs_to :member, dependent: :destroy
  belongs_to :speciality, dependent: :destroy
end
