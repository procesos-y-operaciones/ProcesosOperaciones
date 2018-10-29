class CreateCompetenciesEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :competencies_evaluations, id: false do |t|

      t.belongs_to  :competency, index: true
      t.belongs_to  :evaluation, index: true

      t.timestamps
    end
  end
end
