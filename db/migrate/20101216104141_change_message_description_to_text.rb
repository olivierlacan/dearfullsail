class ChangeMessageDescriptionToText < ActiveRecord::Migration
  def self.up
    change_column :messages, :description, :text
  end

  def self.down
    change_column :messages, :description, :string
  end
end
