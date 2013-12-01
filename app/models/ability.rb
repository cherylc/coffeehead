class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    elsif user.editor?
      can :manage, :roasts
      can :manage, :roast_notes
    elsif user.reader?
      can :read, :all
    end
  end
end
