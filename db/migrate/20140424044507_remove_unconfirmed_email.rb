class RemoveUnconfirmedEmail < ActiveRecord::Migration
  def change
  	remove_columns :users, :unconfirmed_email, :confirmation_token, :confirmed_at, :confirmation_sent_at
  end
end
