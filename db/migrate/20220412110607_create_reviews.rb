class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.float :evaluation, null: false
      t.text :comment
      t.integer :category
      t.integer :user_id, null: false
      t.integer :musical_id, null: false
      t.timestamps
    end
  end
end
