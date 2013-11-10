class AddPriorityToPartLists < ActiveRecord::Migration
  def change
    add_column :part_lists, :priority, :string
  end
end
