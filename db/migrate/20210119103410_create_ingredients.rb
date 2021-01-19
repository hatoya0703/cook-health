class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string     :material, null: false, comment: "材料名"
      t.string     :quantity, null: false, comment: "分量"
      t.references :recipe,   null: false, foreign_key: true, comment: "対応レシピ"
      t.timestamps
    end
  end
end
