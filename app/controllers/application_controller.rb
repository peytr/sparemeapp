class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    include Pundit
    
    def after_sign_in_path_for(user)
        if user.profile.nil?
            profile_edit_path
        else
            root_path
        end
    end
end
