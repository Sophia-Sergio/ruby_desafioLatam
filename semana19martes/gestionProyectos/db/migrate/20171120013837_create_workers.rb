class CreateWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :lastname
      t.string :email

      t.timestamps
    end
  end
end
