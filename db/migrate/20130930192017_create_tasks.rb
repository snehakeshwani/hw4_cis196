class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :class
      t.string :work
      t.string :dueday

      t.timestamps
    end
  end
end
