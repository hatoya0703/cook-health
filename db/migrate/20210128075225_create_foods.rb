class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string food_name,    null: false, comment: "食材名"
      t.text   food_content, null: false, comment: "食材の説明"
      t.timestamps
    end
  end
end
