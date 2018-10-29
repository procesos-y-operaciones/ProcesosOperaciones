class CreateEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluations do |t|

      t.string  :name
      t.string  :code
      t.integer :step, default: 1
      t.integer :boss_id
      t.integer :final_score
      t.string  :comment

      t.belongs_to  :user, index: true

      t.timestamps
    end
  end
end
