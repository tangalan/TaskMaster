class RemoveLatitudeFromTask < ActiveRecord::Migration
  def change
    remove_column :tasks, :latitude, :float
  end
end
