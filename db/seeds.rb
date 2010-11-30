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
                          { :initials => 'GDev', :name => 'Game Development'},
                          { :initials => 'MB', :name => 'Music Business' },
                          { :initials => 'RA', :name => 'Recording Arts' },
                          { :initials => 'RE', :name => 'Recording Engineering' },
                          { :initials => 'SP', :name => 'Show Production'}, 
                          { :initials => 'WDD', :name => 'Web Design and Development'}
                        ])