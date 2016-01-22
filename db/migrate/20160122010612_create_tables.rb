class CreateTables < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :title, null: false
      t.integer :code, null: false
      t.string :picture, null: false
      t.timestamps null: false
    end
  end
end
