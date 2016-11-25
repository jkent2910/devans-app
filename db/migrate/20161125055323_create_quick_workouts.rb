class CreateQuickWorkouts < ActiveRecord::Migration
  def change
    create_table :quick_workouts do |t|
      t.text :workout

      t.timestamps null: false
    end
  end
end
