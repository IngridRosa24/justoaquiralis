class DropColumnPymeId < ActiveRecord::Migration[6.1]
  def change
    remove_column(:products, :pymes_id)
  end
end
