class AddPatientToTask < ActiveRecord::Migration
  def change
    add_reference :tasks, :patient, index: true, foreign_key: true
  end
end
