class RenameCommenntsToComments < ActiveRecord::Migration
  def change
    rename_table :commennts, :comments
  end
end