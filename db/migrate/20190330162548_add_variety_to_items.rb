class AddVarietyToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :variety, :string
    remove_column :items, :type
  end
end
