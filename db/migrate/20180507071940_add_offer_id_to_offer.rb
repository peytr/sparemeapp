class AddOfferIdToOffer < ActiveRecord::Migration[5.2]
  def change
    add_reference :offers, :request, foreign_key: true
    add_column :offers, :accepted_at, :datetime, null: true, default: nil
  end
end
