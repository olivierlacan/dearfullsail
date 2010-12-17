class DropAssignmentsAssignementsAndAbility < ActiveRecord::Migration
  def self.up
    drop_table :assignements
    drop_table :assignments
    drop_table :abilities
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
