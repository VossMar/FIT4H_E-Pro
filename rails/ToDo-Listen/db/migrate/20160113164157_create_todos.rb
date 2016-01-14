class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.datetime :end_date
      t.integer :prio
      t.text :extention

      t.timestamps null: false
    end
  end
end
