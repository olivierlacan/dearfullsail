class Student < ActiveRecord::Base
  belongs_to :degree
  has_many :messages
  has_many :votes
  
  devise :database_authenticatable, :confirmable, :recoverable, :rememberable, :trackable, :validatable
  
  # Validations
  validates :first_name,
            :presence => true
  validates :first_name,
            :presence => true
            
  def to_s
    self.first_name + " " + self.last_name
  end
  
end
