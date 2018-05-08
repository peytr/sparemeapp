class AddDefaultValueToOffers < ActiveRecord::Migration[5.2]
  def change
    change_column :offers, :accepted, :boolean, default: false
  end
end
