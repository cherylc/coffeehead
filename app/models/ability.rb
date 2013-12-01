class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :access, :rails_admin
      can :manage, :all
      can :dashboard
    elsif user.editor?
      can :access, :rails_admin
      can :dashboard
      can :read, [Business, Location]
      can :manage, [Roast, RoastNote]
    elsif user.reader?
      can :read, :all
    end
  end
end
