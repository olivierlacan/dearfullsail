class CreateAssignements < ActiveRecord::Migration
  def self.up
    create_table :assignements do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :assignements
  end
end
