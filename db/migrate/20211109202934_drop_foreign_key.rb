class DropForeignKey < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :products, :pymes
  end
end
