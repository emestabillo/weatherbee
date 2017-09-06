class RemoveActivityFromWeathers < ActiveRecord::Migration[5.0]
  def change
    remove_column :weathers, :activity, :string
  end
end
