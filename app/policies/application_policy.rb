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
    if @user.email.include? "admin"
      return true
    else
      false
    end
  end

  def new?
    if @user.email.include? "admin"
      return true
    else
      false
    end
  end

  def update?
    if @user.email.include? "admin"
      return true
    else
      false
    end
  end

  def edit?
    if @user.email.include? "admin"
      return true
    else
      false
    end
  end

  def destroy?
    if @user.email.include? "admin"
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
