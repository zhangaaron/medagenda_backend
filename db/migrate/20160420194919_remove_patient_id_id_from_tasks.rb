class RemovePatientIdIdFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :patient_id_id, :integer
  end
end
