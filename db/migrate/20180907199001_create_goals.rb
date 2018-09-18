class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|

      t.integer   :phases_number
      t.string    :comment

      t.belongs_to  :period, index: true
      t.belongs_to  :goal_type, index: true
      t.belongs_to  :user, index: true

      t.timestamps
    end
  end
end
