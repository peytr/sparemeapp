class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.text :message
      t.decimal :price
      t.text :image_data
      t.boolean :accepted
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
