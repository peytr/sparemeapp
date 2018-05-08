class RemoveUserIdFromOffersTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :user_id
  end
end
