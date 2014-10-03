class ChangeDueDateColumnOnTodos < ActiveRecord::Migration
  def up
    change_column :todos, :due_date, :date
  end

  def down
    change_column :todos, :due_date, :datetime
  end
end
