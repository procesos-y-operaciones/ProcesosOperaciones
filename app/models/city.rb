# == Schema Information
#
# Table name: cities
#
#  id              :integer          not null, primary key
#  name            :string
#  code            :string
#  departaments_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class City < ApplicationRecord
end
