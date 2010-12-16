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
                    
students = Student.create([ { :first_name => "Andrew", :last_name => "Smith", :degree_id => 12, :date => "2008-08-04", :email => "andrewsmith@fullsail.edu", :password => 'doodoo', :password_confirmation => 'doodoo' },
                            { :first_name => "Zachary", :last_name => "Nicoll", :degree_id => 12, :date => "2009-05-04", :email => "j311yb34n@fullsail.edu", :password => 'doodoo', :password_confirmation => 'doodoo' },
                            { :first_name => "Olivier", :last_name => "Lacan", :degree_id => 12, :date => "2009-05-04", :email => "olivierlacan@fullsail.edu", :password => 'doodoo', :password_confirmation => 'doodoo' } 
                          ])
students.each(&:confirm!)

# messages = Message.create([ { :title => 'We should organize a Web DADA', :description => 'Many web students would benefits from an open lab that would take place regularly on campus and allow students to interact with each other regardless of their level in the degree. It would also be a great opportunity for students that are closer to final project to brush up on earlier concepts.', :student_id => 3 }
#                           ])