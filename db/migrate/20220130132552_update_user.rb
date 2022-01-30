class UpdateUser < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.string :confirmation_token
      t.datetime :confirmed_at, precision: 6
      t.datetime :confirmation_sent_at, precision: 6
      t.string :unconfirmed_email
    end
  end
end
