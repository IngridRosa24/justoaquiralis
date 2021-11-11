class DropPymeProducts < ActiveRecord::Migration[6.1]
  def change
    drop_table :pyme_products
  end
end
