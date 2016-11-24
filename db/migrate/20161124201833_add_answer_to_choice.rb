class AddAnswerToChoice < ActiveRecord::Migration
  def change
    add_column :choices, :answer, :boolean, default: false
  end
end
