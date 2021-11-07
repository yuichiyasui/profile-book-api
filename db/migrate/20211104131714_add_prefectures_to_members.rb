class AddPrefecturesToMembers < ActiveRecord::Migration[6.0]
  def up
    add_reference :members, :home_prefecture, foreign_key: { to_table: :prefectures }
    add_reference :members, :residence_prefecture, foreign_key: { to_table: :prefectures }
  end

  def down
    remove_reference :members, :home_prefecture, foreign_key: { to_table: :prefectures }
    remove_reference :members, :residence_prefecture, foreign_key: { to_table: :prefectures }
  end
end
