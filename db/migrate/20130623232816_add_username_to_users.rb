class AddUsernameToUsers < ActiveRecord::Migration
  def change
      add_column :users, :email, :string
      add_column :users, :password_digest, :string
      add_column :users, :zip, :integer
      add_column :users, :name, :string
  end
end
