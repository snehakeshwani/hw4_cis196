class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :restaurant
      t.string :cuising
      t.integer :rating

      t.timestamps
    end
  end
end
