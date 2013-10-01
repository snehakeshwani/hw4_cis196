class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :course
      t.string :work
      t.string :dueday

      t.timestamps
    end
  end
end
