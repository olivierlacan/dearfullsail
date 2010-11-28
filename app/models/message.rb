class Message < ActiveRecord::Base
  belongs_to :students
  
  # Validations
  validates :student_id,
            :presence => true
end
