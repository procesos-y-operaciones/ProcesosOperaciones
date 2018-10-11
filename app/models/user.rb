# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  document               :bigint(8)
#  expedition_date        :date
#  expedition_place       :string
#  first_name             :string
#  second_name            :string
#  first_lastname         :string
#  second_lastname        :string
#  born_date              :date
#  age                    :integer
#  personal_mail          :string
#  corporative_mail       :string
#  telephone              :string
#  celphone               :string
#  address                :string
#  evaluation_role        :integer          default(3)
#  step                   :integer          default(1)
#  terms                  :boolean          default(FALSE)
#  identification_type_id :integer
#  departament_id         :integer
#  city_id                :integer
#  area_id                :integer
#  charge_id              :integer
#  genre_id               :integer
#  generation_range_id    :integer
#  role_id                :integer
#  user_id                :integer
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :goals
  has_many :users

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

  def get_bosses
    if Area.exists?(self.area_id)
      high_area = Area.find(self.area_id)
      if Area.exists?(high_area.area_id)
        Area.find(high_area.area_id).users
      else
        []
      end
    end
  end

  def self.get_all_sorted
    self.order('created_at DESC')
  end

end
