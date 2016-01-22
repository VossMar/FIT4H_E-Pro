class AddVidToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :vidurl, :string
  end
end
