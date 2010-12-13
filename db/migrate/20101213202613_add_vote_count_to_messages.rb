class AddVoteCountToMessages < ActiveRecord::Migration
  def self.up
    add_column :messages, :vote_count, :integer
  end

  def self.down
    remove_column :messages, :vote_count
  end
end
