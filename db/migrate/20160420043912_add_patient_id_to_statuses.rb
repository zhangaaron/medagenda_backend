class AddPatientIdToStatuses < ActiveRecord::Migration
  def change
    add_reference :statuses, :patient_id, index: true, foreign_key: true
  end
end
