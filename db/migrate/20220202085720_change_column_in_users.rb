class ChangeColumnInUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :display, :integer
    add_column :users, :display, :integer, null: false, default:0
  end
end
