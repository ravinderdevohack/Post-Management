class AddColumnIsAdminToCashes < ActiveRecord::Migration[7.0]
  def change
    add_column :cashes, :isAdmin, :boolean, default: false
  end
end
