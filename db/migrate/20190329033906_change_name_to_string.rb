class ChangeNameToString < ActiveRecord::Migration[5.2]
  def change
    change_column :ingredients, :name, :string
  end
end
