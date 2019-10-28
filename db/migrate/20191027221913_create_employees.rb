class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :cinema_id
      t.integer :age

      t.timestamps
    end
    add_index :employees, :cinema_id
  end
end
