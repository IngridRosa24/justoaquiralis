class Product < ApplicationRecord
    #VALIDACIÓN DE LOS DATOS INGRESADOS
    validates :name, :price, :information, presence: true #ACÁ SE VALIDA QUE EL DATO QUE SE INGRESE EN LOS ATRIBUTOS INDICADOS, NO SEAN NULOS O VACÍOS
    validates :price, numericality: { only_integer: true } #ACÁ SE VALIDA QUE EL DATO QUE SE INGRESE EN EL ATRIBUTO PRICE SEA UN NÚMERO ENTERO
    
    #VINCULAR LOS PRODUCTOS CON IMÁGENES
    has_one_attached :imagen

    #ASOCIACIÓN CON LAS TABLAS CATEGORY Y EMPRENDIMIENTO
    has_many :category_products, dependent: :destroy #RELACIONA EL MODELO PRODUCTOS CON LA TABLA CATEGORIAPRODUCTOS
    has_many :categories, through: :category_products #LA TABLA PRODUCTOS VA A ESTAR RELACIONADA CON LA TABLA CATEGORIA A TRAVÉS TABLA CATEGORIAPRODUCTOS
    belongs_to :pyme, dependent: :destroy
    

    
end
