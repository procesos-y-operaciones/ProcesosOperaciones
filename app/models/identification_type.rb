# == Schema Information
#
# Table name: identification_types
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class IdentificationType < ApplicationRecord
end
