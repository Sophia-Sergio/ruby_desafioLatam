class AddCompletedToDoings < ActiveRecord::Migration[5.1]
  def change
    add_column :doings, :completed, :boolean
  end
end
