class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    if @user.admin = true
      return true
    else
      false
    end
  end

  def new?
    if @user.admin = true
      return true
    else
      false
    end
  end

  def update?
    if @user.admin = true
      return true
    else
      false
    end
  end

  def edit?
    if @user.admin = true
      return true
    else
      false
    end
  end

  def destroy?
    if @user.admin = true
      return true
    else
      false
    end
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
