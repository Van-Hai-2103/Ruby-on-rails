class RemoveAuthColumnsFromUsers < ActiveRecord::Migration[8.0]
  def change
    remove_column :users, :password_digest, :string
    remove_column :users, :session_token, :string
  end
end
