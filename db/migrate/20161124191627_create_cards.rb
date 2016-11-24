class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :card_type
      t.integer :deck_id

      t.timestamps null: false
    end
  end
end
