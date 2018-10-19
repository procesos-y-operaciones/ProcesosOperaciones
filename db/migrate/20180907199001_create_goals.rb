class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|

      t.string    :goal_name
      t.integer   :phases_number
      t.string    :general_ind
      t.string    :specific_ind
      t.integer   :percentaje
      t.integer   :resource

      t.belongs_to  :period, index: true
      t.belongs_to  :goal_type, index: true

      t.timestamps
    end
  end
end
