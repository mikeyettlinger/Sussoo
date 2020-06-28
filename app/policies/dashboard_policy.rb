class DashboardPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def dashboard?
      true
    end

    def index?
      true
    end
  end
end
