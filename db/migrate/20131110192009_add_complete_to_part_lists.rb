class AddCompleteToPartLists < ActiveRecord::Migration
  def change
    add_column :part_lists, :complete, :boolean
  end
end
