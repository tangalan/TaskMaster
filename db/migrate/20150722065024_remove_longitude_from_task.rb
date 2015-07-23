class RemoveLongitudeFromTask < ActiveRecord::Migration
  def change
    remove_column :tasks, :longtitude, :float
  end
end
