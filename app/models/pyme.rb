class Pyme < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #ASOCIACIÓN CON LAS TABLAS PRODUCT
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  has_many :products, dependent: :destroy

  
  
end
