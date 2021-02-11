class RecipeDescriptionNotnull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :recipes, :description, false
  end
end
