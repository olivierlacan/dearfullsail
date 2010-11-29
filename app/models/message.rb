class Message < ActiveRecord::Base
  belongs_to :student
  
  # Validations
  validates :student_id,
            :presence => true
end
