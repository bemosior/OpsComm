class AlterUsersForLdap < ActiveRecord::Migration
  def change
    add_column :users, :login, :string, null: false, unique: true
    add_index :users, :login, unique: true
  end
end
