class Student < ActiveRecord::Base
  belongs_to :degrees
  has_many :messages
  
  # Validations
  validates :first_name,
            :presence => true
  validates :first_name,
            :presence => true
  validates :degree,
            :presence => true
end
