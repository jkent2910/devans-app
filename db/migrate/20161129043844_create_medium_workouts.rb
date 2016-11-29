class CreateMediumWorkouts < ActiveRecord::Migration
  def change
    create_table :medium_workouts do |t|
      t.text :workout

      t.timestamps null: false
    end
  end
end
