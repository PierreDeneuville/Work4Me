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

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
