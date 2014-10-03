class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :description
      t.integer :days_left
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end
