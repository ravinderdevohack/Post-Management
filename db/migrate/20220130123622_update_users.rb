class UpdateUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :avatar, :string
    add_column :users, :country, :string
    add_column :users, :state, :string
    add_column :users, :city, :string
    add_column :users, :display, :integer


    add_column :users, :provider, :string, limit: 50, null: false, default: ''
    add_column :users, :uid, :string, limit: 500, null: false, default: ''
  end
end
