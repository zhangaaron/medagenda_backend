class RenameFirstNameColumnPatients < ActiveRecord::Migration
  def change
    rename_column :patients, :first_name, :firstname
  end
end
