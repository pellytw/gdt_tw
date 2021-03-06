class Ability
   include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user
    if user.role? :admin
      can :manage, :all
    elsif user.role? :participante
      can :read, :all
      can :read, [Equipo]
      #Usuario
      can :update, User do |user2|
        user2.try(:id) == user.id
      end
      
    end  
  end
end
