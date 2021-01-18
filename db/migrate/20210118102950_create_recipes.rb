class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string     :title, null: false,                   comment: "レシピ名"
      t.text       :content, null: false,                 comment: "レシピ説明文"
      t.references :user, null: false, foreign_key: true, comment: "投稿ユーザーID"
      t.timestamps
    end
  end
end
