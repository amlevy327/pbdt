class AddLogDateToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :log_date, :string
  end
end
