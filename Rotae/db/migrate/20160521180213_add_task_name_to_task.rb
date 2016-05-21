class AddTaskNameToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :task_name, :string
  end
end
