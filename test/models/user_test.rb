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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
