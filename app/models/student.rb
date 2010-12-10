class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :recoverable, 
          :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :bio, :date, 
                  :email, :password, :password_confirmation, :remember_me
  belongs_to :degree
  has_many :messages
  has_many :votes
  
  # Validations
  validates :first_name, :last_name, :email, :date,
            :presence => true
            
  def to_s
    self.first_name + " " + self.last_name
  end
  
end
