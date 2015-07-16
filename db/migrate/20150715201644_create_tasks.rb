class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :Description
      t.string :Category
      t.date :Date
      t.time :Time
      t.integer :Reward
      t.string :Email

      t.timestamps null: false
    end
  end
end
