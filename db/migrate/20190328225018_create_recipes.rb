class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|

      t.string :name
      t.decimal :servings

      t.timestamps
    end
  end
end
