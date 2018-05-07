class RemoveAcceptedAtFromOffer < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :accepted_at, :datetime
  end
end
