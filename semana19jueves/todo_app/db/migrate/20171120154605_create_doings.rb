class CreateDoings < ActiveRecord::Migration[5.1]
  def change
    create_table :doings do |t|

      t.timestamps
    end
  end
end
