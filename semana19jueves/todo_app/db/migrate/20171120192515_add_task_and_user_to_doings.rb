class AddTaskAndUserToDoings < ActiveRecord::Migration[5.1]
  def change
    add_reference :doings, :task, foreign_key: true
    add_reference :doings, :user, foreign_key: true
  end
end
