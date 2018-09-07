class CreateIdentificationTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :identification_types do |t|

      t.string  :name
      t.string  :code

      t.timestamps
    end
  end
end
