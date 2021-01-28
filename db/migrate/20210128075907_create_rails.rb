class CreateRails < ActiveRecord::Migration[6.0]
  def change
    create_table :rails do |t|
      t.string :g
      t.string :model
      t.string :RecipeTags

      t.timestamps
    end
  end
end
