class DeleteMissivesTable < ActiveRecord::Migration
  def self.up
    drop_table :missives
  end

  def self.down
  end
end
