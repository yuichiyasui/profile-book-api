class AddPrefecturesToMembers < ActiveRecord::Migration[6.0]
  def up
    add_column :members, :home_prefecture_id, :integer, default: 0, null: false
    add_column :members, :residence_prefecture_id, :integer, default: 0, null: false
  end

  def down
    remove_column :members, :home_prefecture_id, :integer, default: 0, null: false
    remove_column :members, :residence_prefecture_id, :integer, default: 0, null: false
  end
end
