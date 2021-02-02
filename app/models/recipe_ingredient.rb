class RecipeIngredient
  include ActiveModel::Model
  attr_accesser :title, :content, :category_id, :material, :quantity
end