class ChangeColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :user_type, :integer
    add_column :users, :user_type, :integer, defalut: 0
  end
end
