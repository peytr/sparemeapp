class RemoveOfferIdFromRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :offer_id, :bigint
  end
end
