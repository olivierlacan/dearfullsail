class CreateVotes < ActiveRecord::Migration
  def self.up
    drop_table :votes
    
    create_table :votes do |t|
      t.integer   :message_id
      t.integer   :student_id
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :charge
    end
  end

  def self.down
    drop_table :votes
  end
end
