class AddVarietyToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :variety, :string
    remove_column :foods, :type
  end
end
