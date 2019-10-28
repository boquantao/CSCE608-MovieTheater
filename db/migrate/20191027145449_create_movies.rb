class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :movie_type
      t.datetime :released_date

      t.timestamps
    end
  end
end
