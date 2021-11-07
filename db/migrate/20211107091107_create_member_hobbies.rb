class CreateMemberHobbies < ActiveRecord::Migration[6.0]
  def change
    create_table :member_hobbies do |t|
      t.references :member, foreign_key: true, null: false
      t.references :hobby, foreign_key: true, null: false

      t.timestamps
    end
  end
end
