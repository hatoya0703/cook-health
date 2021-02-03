class AddDescriptionToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :description, :text, comment: "レシピの説明"
  end
end
