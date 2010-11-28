class CreateStudentIdOnMessages < ActiveRecord::Migration
  def self.up
    add_column :messages, :student_id
  end

  def self.down
    remove_column :messages, :student_id
  end
end
