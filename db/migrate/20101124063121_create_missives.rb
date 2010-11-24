class CreateMissives < ActiveRecord::Migration
  def self.up
    create_table :missives do |t|
      t.string :title
      t.string :message
      t.date :date
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :missives
  end
end
