class AddWeeklyEmailToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :weekly_email, :boolean, default: true
  end
end
