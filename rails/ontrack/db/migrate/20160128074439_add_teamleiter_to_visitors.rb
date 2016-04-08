class AddTeamleiterToVisitors < ActiveRecord::Migration
  def change
    add_column :visitors, :teamleiter, :boolean
  end
end
