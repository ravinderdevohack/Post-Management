class AddColumnToPosts < ActiveRecord::Migration[7.0]
  def change
    change_table :posts do |t|
      t.belongs_to :users
    end
  end
end
