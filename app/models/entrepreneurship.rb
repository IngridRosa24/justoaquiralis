class Entrepreneurship < ApplicationRecord
    has_many :pyme_products #RELACIONA EL MODELO ENTREPRENEURSHIP CON LA TABLA PYMEPRODUCTOS
    has_many :products, through: :pyme_products #LA TABLA EMPRENDIMIENTO VA A ESTAR RELACIONADA CON LA TABLA PRODUCTOS A TRAVÉS TABLA PYMESPRODUCTOS

    #VALIDACIÓN DE LOS DATOS INGRESADOS
    validates :name, :last_name, :email, :password, :pyme_name, :street, :number, presence: true #ACÁ SE VALIDA QUE EL DATO QUE SE INGRESE EN LOS ATRIBUTOS INDICADOS, NO SEAN NULOS O VACÍOS
    
    EMAIL_REGEX = /A([^@s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})z/i
    validates_format_of :email, with: EMAIL_REGEX #VALIDA QUE LA DIRECCIÓN DE CORREO QUE SE INTRODUCE TENGA UN FORMATO VALIDO


end
