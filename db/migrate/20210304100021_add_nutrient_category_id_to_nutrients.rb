class AddNutrientCategoryIdToNutrients < ActiveRecord::Migration[6.0]
  def change
    add_column :nutrients, :nutrient_category_id, :integer, comment: "5大栄養素の分類"
  end
end
