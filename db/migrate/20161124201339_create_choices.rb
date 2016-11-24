class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.text :choice_text
      t.integer :card_front_id

      t.timestamps null: false
    end
  end
end
