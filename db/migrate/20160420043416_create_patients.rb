class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :lastname
      t.string :room
      t.datetime :dob

      t.timestamps null: false
    end
  end
end
