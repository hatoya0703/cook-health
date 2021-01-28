class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string tag_name, null:false, comment: "タグ名"
      t.timestamps
    end
  end
end
