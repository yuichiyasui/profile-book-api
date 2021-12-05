class CreateTemporaryUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :temporary_users do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :password, null: false
      t.string :uuid, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
