class AddBusinessNameToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :business_name, :string
  end
end
