class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|

      t.integer   :phases_number
      t.string    :comment

      t.belongs_to  :periods, index: true
      t.belongs_to  :goal_types, index: true
      t.belongs_to  :users, index: true

      t.timestamps
    end
  end
end
