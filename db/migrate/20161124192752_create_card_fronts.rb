class CreateCardFronts < ActiveRecord::Migration
  def change
    create_table :card_fronts do |t|
      t.string :question
      t.integer :card_id

      t.timestamps null: false
    end
  end
end
