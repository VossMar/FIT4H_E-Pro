class AddFieldsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :desctription, :text
    add_column :movies, :release_on, :data
  end
end
