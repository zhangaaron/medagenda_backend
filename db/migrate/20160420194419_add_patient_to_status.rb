class AddPatientToStatus < ActiveRecord::Migration
  def change
    add_reference :statuses, :patient, index: true, foreign_key: true
  end
end
