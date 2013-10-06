class CreatePartLists < ActiveRecord::Migration
  def change
    create_table :part_lists do |t|
      t.string :title
      t.belongs_to :task, index: true

      t.timestamps
    end
  end
end
