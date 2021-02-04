class RecipeIngredient
  include ActiveModel::Model
  attr_accessor :title, :content, :category_id, :description, :material, :quantity, :user_id, :images, :nutrient_ids
  
  def save
    recipe = Recipe.create(title: title, category_id: category_id, images: images,description: description, content: content,user_id: user_id, nutrient_ids: nutrient_ids )
    Ingredient.create(material: material, quantity: quantity, recipe_id: recipe.id)
  end

end