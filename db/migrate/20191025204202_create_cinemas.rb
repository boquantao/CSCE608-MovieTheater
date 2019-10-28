class CreateCinemas < ActiveRecord::Migration[5.0]
  def change
    create_table :cinemas do |t|
      t.string :name
      t.string :address
      t.string :tel

      t.timestamps
    end
  end
end
