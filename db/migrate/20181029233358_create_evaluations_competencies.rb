class CreateEvaluationsCompetencies < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluations_competencies do |t|

      t.belongs_to  :competency, index: true
      t.belongs_to  :evaluation, index: true

      t.timestamps
    end
  end
end
