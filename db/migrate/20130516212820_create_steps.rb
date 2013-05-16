class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :order
      t.string :todo

      t.timestamps
    end
  end
  add_index :steps, :task_id
end
