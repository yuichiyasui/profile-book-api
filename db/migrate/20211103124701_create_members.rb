class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :first_name, null: false
      t.string :first_name_hiragana, null: false
      t.string :last_name, null: false
      t.string :last_name_hiragana, null: false
      t.string :handle_name, null: false
      t.datetime :birthday, null: false
      t.text :comment, null: false

      t.timestamps
    end
  end
end
