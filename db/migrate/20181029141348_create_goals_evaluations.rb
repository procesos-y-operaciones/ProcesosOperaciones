class CreateGoalsEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :goals_evaluations, id: false do |t|

      t.belongs_to  :goal, index: true
      t.belongs_to  :evaluation, index: true

      t.timestamps
    end
  end
end
