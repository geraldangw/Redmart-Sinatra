class CreateCategoriesTable < ActiveRecord::Migration
  def change
    create_table :categories do |t|

      t.string :name, null:false
      t.integer :parent_category_id, null:false
      t.string :status, null:false

      t.timestamps
    end
  end
end
