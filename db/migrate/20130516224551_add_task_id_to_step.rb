class AddTaskIdToStep < ActiveRecord::Migration
  def change
    add_column :steps, :task_id, :integer
  end
end
