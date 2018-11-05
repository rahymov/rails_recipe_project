class CreateRecipCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :recip_categories do |t|
      t.integer :recipe_id
      t.integer :category_id

      t.timestamps
    end
  end
end
