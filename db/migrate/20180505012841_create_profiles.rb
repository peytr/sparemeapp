class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :house_number
      t.string :street_name
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country_code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
