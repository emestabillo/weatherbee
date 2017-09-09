class RemoveConditionFromWeathers < ActiveRecord::Migration[5.0]
  def change
    remove_column :weathers, :condition, :string
  end
end
