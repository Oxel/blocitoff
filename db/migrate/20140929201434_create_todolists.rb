class CreateTodolists < ActiveRecord::Migration
  def change
    create_table :todolists do |t|
      t.text :description
      t.integer :daysleft
      t.boolean :complete

      t.timestamps
    end
  end
end
