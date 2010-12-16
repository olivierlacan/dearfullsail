class AddRolesToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :role, :string
  end

  def self.down
    remove_column :students, :role
  end
end
