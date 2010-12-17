class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :recoverable, 
          :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :bio, :date, 
                  :email, :password, :degree_id, :password_confirmation, :remember_me
  belongs_to :degree
  has_many :messages
  has_many :votes
  
  scope :with_role, lambda { |role| {:conditions => "roles_mask & #{2 ** ROLES.index(roles.to_s)} > 0"}  }
  
  # array of available roles
  ROLES = %w[admin moderator author]
  
  def roles=(roles)
    self.roles_mask = (roles & ROLES).map  { |r| 2 ** ROLES.index(r) }.sum
  end
  
  def roles
    ROLES.reject { |r| ((roles_mask || 0) & 2 ** ROLES.index(r)).zero? }
  end
  
  def role_symbols
    roles.map(&:to_sym)
  end
  
  # Validations
  validates :first_name, :last_name, :email,
            :presence => true
            
  def to_s
    self.first_name + " " + self.last_name
  end
  
end
