class RemoveTemperatureFromWeathers < ActiveRecord::Migration[5.0]
  def change
    remove_column :weathers, :temperature, :integer
  end
end
