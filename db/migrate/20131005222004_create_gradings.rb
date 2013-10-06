class CreateGradings < ActiveRecord::Migration
  def change
    create_table :gradings do |t|
      t.int :percent
      t.string :importance
      t.string :finalgrade
      t.belongs_to :task, index: true

      t.timestamps
    end
  end
end
