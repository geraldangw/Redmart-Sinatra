class Purchases < ActiveRecord::Base

  def change
add_foreign_key :purchases, :products
add_foreign_key :purchases, :users
# add_foreign_key [targeted table], [referenced table]
end
end
