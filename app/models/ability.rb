class Ability < ActiveRecord::Base
  include CanCan::Ability
  
  def initialize(user)
    if user.admin?
      can :manage, :all
    else
      can :read, :all
    end
  end
end
