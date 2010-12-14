class Vote < ActiveRecord::Base
  belongs_to :student
  belongs_to :message
  
  # Validation
  validates :message_id,
            :presence => true
  validates :message_id,
            :uniqueness => { :scope => :student_id }
            
  # validates :positive
  #             :presence => true
  # validates :student_id,
  #           :presence => true
end
