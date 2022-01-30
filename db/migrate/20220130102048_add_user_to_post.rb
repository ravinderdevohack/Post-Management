class AddUserToPost < ActiveRecord::Migration[7.0]
  def change
    change_table :posts do |t|
      t.remove :users_id
      t.belongs_to :user
    end
  end
end
