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
#  terms                  :boolean          default(FALSE)
#  resource               :string
#  identification_type_id :integer
#  departament_id         :integer
#  city_id                :integer
#  area_id                :integer
#  charge_id              :integer
#  genre_id               :integer
#  generation_range_id    :integer
#  role_id                :integer
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  avatar_file_name       :string
#  avatar_content_type    :string
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => Rails.root.join('public','images',':style','missing.png')
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  belongs_to :area

  has_many  :evaluations
  accepts_nested_attributes_for :evaluations, reject_if: :all_blank, allow_destroy: true

  def full_name
    "#{self.first_name} #{self.second_name} #{self.first_lastname} #{self.second_lastname}"
  end

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

  def get_evaluates_accept
    Evaluation.where(step: 2, boss_id: self.id)
  end

  def get_evaluates_approve
    Evaluation.where(step: 4, boss_id: self.id)
  end

  def get_bosses
    if Area.exists?(self.area_id)
      high_area = Area.find(self.area_id)
      if Area.exists?(high_area.area_id)
        Area.find(high_area.area_id).get_bosses
      else
        []
      end
    else
      []
    end
  end

  def self.get_users
    self.where(role_id: 2).order('created_at DESC')
  end

  def self.get_all_sorted
    self.order('created_at DESC')
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      User.create! row.to_hash
    end
  end

end
