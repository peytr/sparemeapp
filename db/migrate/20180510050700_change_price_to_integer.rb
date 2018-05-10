class ChangePriceToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :offers, :price, :integer
  end
end
