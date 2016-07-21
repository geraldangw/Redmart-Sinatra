class CreateUserTable < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string  :name, null:false
      t.string  :email, null:false
      t.string  :address, null:false
      t.string  :password, null:false
      t.integer :cc_number, null:false
      t.date    :date_joined, null:false

      t.timestamps

    end
  end
end
