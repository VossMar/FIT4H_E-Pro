class AddCadiduToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :cast, :string
    add_column :movies, :director, :string
    add_column :movies, :duration, :time
  end
end
