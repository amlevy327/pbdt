class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.string :name
      t.string :type
      t.decimal :ss_amt_wt
      t.string :ss_unit_wt
      t.decimal :ss_amt_vol
      t.string :ss_unit_vol

      t.timestamps
    end
  end
end
