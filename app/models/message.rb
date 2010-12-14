class Message < ActiveRecord::Base
  belongs_to :student
  has_many :votes do
    def vote_count
      map(&:charge).sum
    end
  end
  
  # Validations
  validates :student_id,
            :presence => true
end
