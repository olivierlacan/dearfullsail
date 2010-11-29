class Message < ActiveRecord::Base
  belongs_to :student
  has_many :votes
  
  # Validations
  validates :student_id,
            :presence => true
end
