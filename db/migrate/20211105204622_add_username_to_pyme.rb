class AddUsernameToPyme < ActiveRecord::Migration[6.1]
  def change
    add_column :pymes, :name, :string #NOMBRE DEL REPRESENTANTE LEGAL
    add_column :pymes, :lastname, :string #APELLIDO DEL REPRESENTANTE LEGAL
    add_column :pymes, :pymesname, :string #NOMBRE DE LA PYME
    
  end
end
