class CreateFoodRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :food_recipes do |t|
      t.references :food,   null:false, foreign_key: true, comment: "対応食材"
      t.references :recipe, null:false, foreign_key: true, comment: "対応レシピ"
      t.timestamps
    end
  end
end
