class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.text :details
      t.datetime :time_expire

      t.timestamps null: false
    end
  end
end
