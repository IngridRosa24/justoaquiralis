class DropEntrepreneurships < ActiveRecord::Migration[6.1]
  def change
    drop_table :entrepreneurships
  end
end
