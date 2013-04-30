class AddMovieIdToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :movie_id, :integer
  end
end
