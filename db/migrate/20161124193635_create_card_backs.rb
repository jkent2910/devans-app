class CreateCardBacks < ActiveRecord::Migration
  def change
    create_table :card_backs do |t|
      t.string :answer
      t.integer :card_id

      t.timestamps null: false
    end
  end
end
