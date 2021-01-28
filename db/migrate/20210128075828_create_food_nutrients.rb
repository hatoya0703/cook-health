class CreateFoodNutrients < ActiveRecord::Migration[6.0]
  def change
    create_table :food_nutrients do |t|
      t.references food,     null:false, foreign_key: true, comment: "対応レシピ"
      t.references nutrient, null:false, foreign_key: true, comment: "対応栄養"
      t.timestamps
    end
  end
end
