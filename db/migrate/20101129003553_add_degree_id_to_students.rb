class AddDegreeIdToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :degree_id, :string
  end

  def self.down
    remove_column :students, :degree_id
  end
end
