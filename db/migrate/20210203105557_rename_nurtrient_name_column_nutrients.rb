class RenameNurtrientNameColumnNutrients < ActiveRecord::Migration[6.0]
  def change
    rename_column :nutrients, :nurtrient_name, :nutrient_name
  end
end
