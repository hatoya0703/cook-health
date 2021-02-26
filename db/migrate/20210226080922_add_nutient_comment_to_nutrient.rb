class AddNutientCommentToNutrient < ActiveRecord::Migration[6.0]
  def change
    add_column :nutrients, :nutrient_comment, :integer, null: false
  end
end
