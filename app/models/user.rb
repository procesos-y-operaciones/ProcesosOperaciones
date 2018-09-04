class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  def get_role_name
    case self.role
    when 1
      "ADMINISTRADOR"
    when 2
      "USUARIO"
    else
      "NO ASIGNADO"
    end
  end
  
end
