# == Schema Information
#
# Table name: users
#
#  id                      :integer          not null, primary key
#  document                :bigint(8)
#  expedition_date         :date
#  expedition_place        :string
#  first_name              :string
#  second_name             :string
#  first_lastname          :string
#  second_lastname         :string
#  born_date               :date
#  personal_mail           :string
#  corporative_mail        :string
#  telephone               :string
#  celphone                :string
#  address                 :string
#  terms                   :boolean          default(FALSE)
#  identification_types_id :integer
#  departaments_id         :integer
#  cities_id               :integer
#  areas_id                :integer
#  charges_id              :integer
#  genres_id               :integer
#  generation_ranges_id    :integer
#  roles_id                :integer
#  email                   :string           default(""), not null
#  encrypted_password      :string           default(""), not null
#  reset_password_token    :string
#  reset_password_sent_at  :datetime
#  remember_created_at     :datetime
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

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

  def self.get_all_sorted
    self.order('created_at DESC')
  end

end
