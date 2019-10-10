class CreateRecipeIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipes, null: false, foreign_key: true
      t.references :ingredients, null: false, foreign_key: true

      t.integer :amount, null:false
      t.text :remark

      t.timestamps
    end
    change_column_default :recipe_ingredients, :amount, 0
  end
end
