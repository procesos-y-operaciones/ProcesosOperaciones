class CreateGoalTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :goal_types do |t|

      t.string  :name
      t.string  :code
      t.string  :evaluation

      t.timestamps
    end
  end
end
