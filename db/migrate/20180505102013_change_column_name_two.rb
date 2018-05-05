class ChangeColumnNameTwo < ActiveRecord::Migration[5.2]
  def change
    rename_column :profiles, :house_number, :street_number
  end
end
