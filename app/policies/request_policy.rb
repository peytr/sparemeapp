class RequestPolicy < ApplicationPolicy

    def index?
        true
    end
    
    def create?
        user.present?
    end
    
    def edit?
        return true if user.present? && user == request.user
    end

    def update?
        return true if user.present? && user == request.user
    end

    def destroy?
        return true if user.present? && user == request.user
    end

    private
 
    def request
      record
    end

end

