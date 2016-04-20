class RemovePatientIdIdFromStatus < ActiveRecord::Migration
  def change
    remove_column :statuses, :patient_id_id, :integer
  end
end
