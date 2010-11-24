class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.string :title
      t.string :description
      t.date :date
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
