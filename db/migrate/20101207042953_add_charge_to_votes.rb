class AddChargeToVotes < ActiveRecord::Migration
  def self.up
    add_column :votes, :charge, :integer
  end

  def self.down
    remove_column :votes, :charge
  end
end
