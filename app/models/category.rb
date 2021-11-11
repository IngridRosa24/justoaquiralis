class Category < ApplicationRecord
    has_many :category_products, dependent: :destroy #RELACIONA EL MODELO CATEGORÍA CON LA TABLA CATEGORIAPRODUCTOS
    has_many :products, through: :category_products #LA TABAL CATEGORIA VA A ESTAR RELACIONADA CON LA TABLA PRODUCTOS A TRAVÉS TABLA CATEGORIAPRODUCTOS
end
