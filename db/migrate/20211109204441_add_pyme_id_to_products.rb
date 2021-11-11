class AddPymeIdToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :pyme_id, :integer
  end
end
