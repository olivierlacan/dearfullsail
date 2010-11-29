class Student < ActiveRecord::Base
  belongs_to :degree
  has_many :messages
  
  # Validations
  validates :first_name,
            :presence => true
  validates :first_name,
            :presence => true
            
  def to_s
    self.first_name + " " + self.last_name
  end
  
end
