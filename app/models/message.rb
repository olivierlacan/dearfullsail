class Message < ActiveRecord::Base
  belongs_to :student
  has_many :votes do
    def charge
      map(&:charge).sum
    end
  end
  
  # Validations
  validates :student_id,
            :presence => true
end
