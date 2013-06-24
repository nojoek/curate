class FixColumnName < ActiveRecord::Migration
  def up
    rename_column :users, :email, :username
  end

  def down
  end
end
