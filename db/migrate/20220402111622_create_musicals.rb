class CreateMusicals < ActiveRecord::Migration[5.2]
  def change
    create_table :musicals do |t|
      t.string :title
      t.string :image_id
      t.text :introduction
      t.integer :category_id

      t.timestamps
    end
  end
end
