class AddPatientIdToTasks < ActiveRecord::Migration
  def change
    add_reference :tasks, :patient_id, index: true, foreign_key: true
  end
end
