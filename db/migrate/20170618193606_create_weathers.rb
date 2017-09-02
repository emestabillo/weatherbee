class CreateWeathers < ActiveRecord::Migration[5.0]
  def change
    create_table :weathers do |t|
      t.string :activity
      t.string :address
      t.integer :temperature
      t.string :condition
      t.timestamps
    end
  end
end
