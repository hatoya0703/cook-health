class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text       :comment_content, null: false,                    comment: "コメント内容"
      t.references :user,            null: false, foreign_key: true, comment: "投稿ユーザー"
      t.references :recipe,          null: false, foreign_key: true, comment: "投稿レシピ"
      t.timestamps
    end
  end
end
