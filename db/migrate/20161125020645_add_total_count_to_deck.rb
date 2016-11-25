class AddTotalCountToDeck < ActiveRecord::Migration
  def change
    add_column :decks, :total_count, :integer, default: 0
  end
end
