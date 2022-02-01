class ChangeCloumnUserTypeToUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :user_type, :integer
    add_column :users, :user_type, :integer, null: false, default: 0
  end
end
