class AddForeignKeyToProducts < ActiveRecord::Migration[6.1]
  def change
    add_index :products, :pyme_id
    #Ex:- add_index("admin_users", "username")
  end
end
