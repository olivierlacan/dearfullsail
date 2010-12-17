class AddRolesMaskToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :roles_mask, :integer
  end

  def self.down
    remove_column :students, :roles_mask
  end
end
