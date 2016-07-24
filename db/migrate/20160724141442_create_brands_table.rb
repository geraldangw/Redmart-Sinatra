class CreateBrandsTable < ActiveRecord::Migration
  def change
    create_table :brands do |t|

      t.string :name, null:false
      t.integer :category_id, null:false
      t.string :supplier, null:false

      t.references :categories

      t.timestamps
    end
  end
end
