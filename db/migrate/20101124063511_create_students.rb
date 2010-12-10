class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :bio
      t.integer :degree_id
      t.date :date
      t.database_authenticatable
      t.recoverable
      t.rememberable
      t.confirmable
      t.trackable
      t.timestamps
    end
    
    add_index :students, :email,                :unique => true
    add_index :students, :reset_password_token, :unique => true
    add_index :students, :confirmation_token,   :unique => true
    
  end

  def self.down
    drop_table :students
  end
end