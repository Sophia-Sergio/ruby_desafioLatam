class AddImageToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :image, :string
  end
end
