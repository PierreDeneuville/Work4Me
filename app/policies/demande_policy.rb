class DemandePolicy < ApplicationPolicy

  def show?
    record.user == user || record.offre.user == user
  end

  def new?
    create?
  end

  def create?
    true
  end

  def accepter?
    true
  end

  def refuser?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
