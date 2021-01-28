class CreateRecipeTags < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_tags do |t|
      t.references recipe, null:false, foreign_key: true, comment: "対応レシピ"
      t.references tag,    null:false, foreign_key: true, comment: "対応タグ"
      t.timestamps
    end
  end
end
