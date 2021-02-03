class RecipeIngredient
  include ActiveModel::Model
  attr_accessor :title, :content, :category_id, :description, :material, :quantity, :user_id
  
  def save
    recipe = Recipe.create(title: title, category_id: category_id, description: description, content: content,user_id: user_id)
    Ingredient.create(material: material, quantity: quantity, recipe_id: recipe.id)
  end

end