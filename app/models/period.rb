# == Schema Information
#
# Table name: periods
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :string
#  state      :string
#  date_beg   :date
#  date_end   :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Period < ApplicationRecord
end
