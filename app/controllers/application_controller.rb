class ApplicationController < ActionController::Base

    include Pundit

    protect_from_forgery with: :exception
    
    def after_sign_in_path_for(user)
        if user.profile.nil?
            profile_edit_path
        else
            root_path
        end
    end
end
