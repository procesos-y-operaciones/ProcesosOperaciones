class CreateEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluations do |t|

      t.string  :name
      t.string  :code
      t.string  :formula

      t.timestamps
    end
  end
end
