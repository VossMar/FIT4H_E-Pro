class AddAdminToVisitors < ActiveRecord::Migration
  def change
    add_column :visitors, :admin, :boolean
  end
end
