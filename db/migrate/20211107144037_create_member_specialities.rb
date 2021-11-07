class CreateMemberSpecialities < ActiveRecord::Migration[6.0]
  def change
    create_table :member_specialities do |t|
      t.references :member, null: false, foreign_key: true
      t.references :speciality, null: false, foreign_key: true

      t.timestamps
    end
  end
end
