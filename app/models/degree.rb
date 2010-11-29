class Degree < ActiveRecord::Base
  has_many :students
  
  # Validations
  validates :name,
            :presence => true
  validates :initials,
            :presence => true
            
  def to_s
    self.name
  end
            
end
