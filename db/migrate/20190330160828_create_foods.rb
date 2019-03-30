class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|

      t.string :name
      t.string :type
      t.decimal :servings_t
      t.decimal :ss_amt_wt_t
      t.string :ss_unit_wt_t
      t.decimal :ss_amt_vol_t
      t.string :ss_unit_vol_t

      t.timestamps
    end
  end
end
