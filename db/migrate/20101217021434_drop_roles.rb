class DropRoles < ActiveRecord::Migration
  def self.up
    drop_table :roles
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
