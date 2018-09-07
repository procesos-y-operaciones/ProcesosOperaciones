class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|

      t.integer :employees

      t.belongs_to  :contract_types, index: true

      t.timestamps
    end
  end
end
