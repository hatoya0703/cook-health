class Foods < ActiveRecord::Migration[6.0]
  def change
    drop_table :food_recipes
  end
end
