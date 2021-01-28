class CreateFoodNutrients < ActiveRecord::Migration[6.0]
  def change
    create_table :food_nutrients do |t|

      t.timestamps
    end
  end
end
