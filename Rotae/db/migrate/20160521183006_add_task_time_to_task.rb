class AddTaskTimeToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :task_time, :integer
  end
end
