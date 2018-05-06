class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :part_name
      t.text :part_description
      t.string :car_make
      t.string :car_model
      t.string :car_series
      t.string :car_year
      t.text :image_data
      t.references :user, foreign_key: true
      t.references :offer, foreign_key: true

      t.timestamps
    end
  end
end
