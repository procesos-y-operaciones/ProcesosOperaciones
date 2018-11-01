class CreateEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluations do |t|

      t.integer :boss_id
      t.integer :step, default: 1
      t.string  :comment
      t.string  :final_comment
      t.integer :final_score
      t.string  :resource

      t.belongs_to  :user, index: true
      t.belongs_to  :period, index: true

      t.timestamps
    end
  end
end
