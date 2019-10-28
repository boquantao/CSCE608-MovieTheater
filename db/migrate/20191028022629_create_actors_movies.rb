class CreateActorsMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :actors_movies do |t|
      t.references :actor, foreign_key: true
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
