class AddAmtUnitToIngredients < ActiveRecord::Migration[5.2]
  def change

    add_column :ingredients, :ss_amt_wt_t, :decimal, default: 0
    add_column :ingredients, :ss_unit_wt_t, :string
    add_column :ingredients, :ss_amt_vol_t, :decimal, default: 0
    add_column :ingredients, :ss_unit_vol_t, :string
  end
end
