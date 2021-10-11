class CreateEntrepreneurships < ActiveRecord::Migration[6.1]
  def change
    create_table :entrepreneurships do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :pyme_name
      t.string :street
      t.integer :number

      t.timestamps
    end
  end
end
