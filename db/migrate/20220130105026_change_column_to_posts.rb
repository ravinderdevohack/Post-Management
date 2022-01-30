class ChangeColumnToPosts < ActiveRecord::Migration[7.0]
  def change
    change_column :posts, :display, :integer, default: 0
  end
end
