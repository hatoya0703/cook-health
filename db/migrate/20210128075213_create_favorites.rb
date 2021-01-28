class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.references :user,   null: false, foreign_key: true, comment: "お気に入りしたユーザー"
      t.references :recipe, null: false, foreign_key: true, comment: "お気に入りしたレシピ"
      t.timestamps
    end
  end
end
