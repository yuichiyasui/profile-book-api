class AddUniqueKeyToCategories < ActiveRecord::Migration[6.0]
  def up
    add_index :categories, [:name], unique: true
  end

  def down
    remove_index :categories, [:name]
  end
end
