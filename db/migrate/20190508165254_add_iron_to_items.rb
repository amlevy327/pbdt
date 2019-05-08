class AddIronToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :iron, :decimal, default: 0
  end
end
