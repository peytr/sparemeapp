class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :profiles, :country_code, :country
  end
end
