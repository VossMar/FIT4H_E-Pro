class AddReferencesToTasks < ActiveRecord::Migration
  def change
    add_reference :tasks, :visitor, index: true, foreign_key: true
  end
end
