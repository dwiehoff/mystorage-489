class SpacePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # scope.where(user: current_user)
    end
  end

  def my_spaces?
    return true
  end

  def show?
    return true
  end

  def create?
    return true
  end

  def update?
    record.user == user
  # - record: the space passed to the `authorize` method in controller
  # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    record.user == user
  end

end
