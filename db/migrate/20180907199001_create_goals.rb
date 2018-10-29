class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|

      t.string    :code
      t.string    :goal_name
      t.integer   :phases_number
      t.string    :general_ind
      t.string    :specific_ind
      t.integer   :percentaje

      t.belongs_to  :goal_type, index: true
      t.belongs_to  :area, index: true

      t.timestamps
    end
  end
end
