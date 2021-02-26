class AddNutientCommentToNutrient < ActiveRecord::Migration[6.0]
  def change
    add_column :nutrients, :nutrient_comment, :string, null: false
  end
end
