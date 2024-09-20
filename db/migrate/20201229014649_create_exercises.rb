class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :type
      t.integer :sets
      t.integer :reps
      t.references :workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
