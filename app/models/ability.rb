class Ability
  include CanCan::Ability

  def initialize(user)
    
     user ||= User.new # por si el usuario no hizo sign in 
  if user.has_role? :admin
    can :manage, :all
  end
  if user.admin?
    can :manage, :all
  end
  if user.has_role? :moderator
    can :read, :all
    can :manage, Article
  end
  if user.has_role? :user
    can :read, Article
    can :manage, User, id: user.id
  end
end

  end
end
