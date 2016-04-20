class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :details
      t.integer :color
      t.datetime :time_due
      t.integer :repeat_time

      t.timestamps null: false
    end
  end
end
