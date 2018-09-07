class CreateCharges < ActiveRecord::Migration[5.1]
  def change
    create_table :charges do |t|

      t.string  :name
      t.string  :code
      t.integer :total_employees

      t.timestamps
    end
  end
end
