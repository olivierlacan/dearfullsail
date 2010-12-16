class RenameStudentRolesToAssignments < ActiveRecord::Migration
  def self.up
    rename_table :student_roles, :assignments
  end

  def self.down
    rename_table :assignments, :student_roles
  end
end
