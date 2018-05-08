class RemoveColumnFromOffer < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :image_data
  end
end
