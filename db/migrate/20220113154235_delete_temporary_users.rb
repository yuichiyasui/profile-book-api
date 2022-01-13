class DeleteTemporaryUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :temporary_users
  end
end
