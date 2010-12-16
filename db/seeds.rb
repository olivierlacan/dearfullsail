# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

degrees = Degree.create([ { :initials => 'CA', :name => 'Computer Animation' },
                          { :initials => 'DAD', :name => 'Digital Arts and Design'},
                          { :initials => 'EB', :name => 'Entertainement Business' },
                          { :initials => 'F', :name => 'Film' },
                          { :initials => 'GA', :name => 'Game Art'},
                          { :initials => 'GD', :name => 'Graphic Design' },
                          { :initials => 'GDev', :name => 'Game Development'},
                          { :initials => 'MB', :name => 'Music Business' },
                          { :initials => 'RA', :name => 'Recording Arts' },
                          { :initials => 'RE', :name => 'Recording Engineering' },
                          { :initials => 'SP', :name => 'Show Production'}, 
                          { :initials => 'WDD', :name => 'Web Design and Development'}
                        ])
students = Student.create([ { :first_name => "Olivier", :last_name => "Lacan", :degree_id => 1, :date => "2009-05-04", :email => "olivierlacan@fullsail.edu", :encrypted_password => "$2a$10$tvx1O9xbFRwLiFRmDhJ/KuY6Z3p/cUZBAfxFmG1m7Eb6...", :password_salt => "$2a$10$Cc0m2IUiB8QBxUigINwUy.", :created_at => "2010-12-10 20:11:41", :confirmation_token: "jif45tDcy8ZqLdnD8lUR", :confirmation_sent_at: "2010-12-15 19:18:30" }
                        ])
                        
# students = Student.create([ { :first_name => "Andrew", :last_name => "Smith", :degree_id => 1, :date => "2008-08-04", :email => "andrewsmith@fullsail.edu", :encrypted_password => "$2a$10$Cc0m2IUiB8QBxUigINwUy.XEMvSCRkmHcDJ7..PZxPyW...", :password_salt => "$2a$10$Cc0m2IUiB8QBxUigINwUy.", :created_at => "2010-12-10 20:11:41" },
#                             { :first_name => "Zachary", :last_name => "Nicoll", :degree_id => 1, :date => "2009-05-04", :email => "j311yb34n@fullsail.edu", :encrypted_password => "$2a$10$qNjq78nKCpF/w3vUyZBITu5K.PXn/YvdQue8bEgLXZ64...", :password_salt => "$2a$10$qNjq78nKCpF/w3vUyZBITu", :created_at => "2010-12-10 20:11:41" },
#                             { :first_name => "Olivier", :last_name => "Lacan", :degree_id => 1, :date => "2009-05-04", :email => "olivierlacan@fullsail.edu", :encrypted_password => "$2a$10$tvx1O9xbFRwLiFRmDhJ/KuY6Z3p/cUZBAfxFmG1m7Eb6...", :password_salt => "$2a$10$Cc0m2IUiB8QBxUigINwUy.", :created_at => "2010-12-10 20:11:41" },
#                             { :first_name => "Andrew", :last_name => "Smith", :degree_id => 1, :date => "2008-08-04", :email => "andrewsmith@fullsail.edu", :encrypted_password => "$2a$10$Cc0m2IUiB8QBxUigINwUy.XEMvSCRkmHcDJ7..PZxPyW...", :password_salt => "$2a$10$Cc0m2IUiB8QBxUigINwUy.", :created_at => "2010-12-10 20:11:41" } 
#                           ])