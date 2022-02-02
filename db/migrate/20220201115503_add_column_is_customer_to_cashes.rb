class AddColumnIsCustomerToCashes < ActiveRecord::Migration[7.0]
  def change
    add_column :cashes, :isCustomer, :boolean, default: false
  end
end
