class AddPurchasesTableTest < ActiveRecord::Migration

    def change
      create_table :purchases do |t|
        # t.integer :user_id, null: false
        # t.integer :product_id, null: false
        t.date :purchase_date, null: false
        t.boolean :status, null: false

        t.references :products
        t.references :users
        t.timestamps
      end
    end
end
