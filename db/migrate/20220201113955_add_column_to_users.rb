class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_type, :integer, defalut: 0
  end
end
