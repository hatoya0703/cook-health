class RecipeIngredient
  include ActiveModel::Model
  attr_accessor :title, :content, :category_id, :description, :material, :quantity, :user_id, :images, :nutrient_ids, :tag_ids, :tag_name
  
  def save
    recipe = Recipe.create(title: title, category_id: category_id, images: images,description: description, content: content,user_id: user_id, nutrient_ids: nutrient_ids, tag_ids: tag_ids)
    Ingredient.create(material: material, quantity: quantity, recipe_id: recipe.id)
  end

  def find_or_create_tags(post_tags)
    post_tags.each do |tag_name|
      post_recipe_tag = Tag.find_or_create_by(tag_name: tag_name)
      self.tag_ids << post_recipe_tag.id
    end
  end
end