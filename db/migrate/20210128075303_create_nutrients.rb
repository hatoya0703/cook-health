class CreateNutrients < ActiveRecord::Migration[6.0]
  def change
    create_table :nutrients do |t|
      t.string nurtrient_name,   null:false, comment: "栄養名"
      t.text   nutrient_content, null:false, comment: "栄養の説明"
      t.timestamps
    end
  end
end
