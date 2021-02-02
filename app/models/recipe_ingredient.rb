class RecipeIngredient
  include ActiveModel::Model
  attr_accessor :title, :content, :category_id, :material, :quantity
end