class ProfilesController < ApplicationController

    before_action :authenticate_user!
    
    def show
        redirect_to :root unless user_signed_in?
        @profile = current_user.profile
    end

    def edit
        @profile = Profile.find_or_initialize_by(user: current_user)
    end
        
    def create
        @profile = Profile.new(profile_params)
        @profile.user = current_user

        if @profile.save
            flash[:notice] = 'Profile Updated'
            redirect_to root_path
        else
            flash[:alert] = 'Could not save profile'
            redirect_back(fallback_location: root_path)
        end
    end

    def update
        @profile = current_user.profile

        if @profile.update(profile_params)
            flash[:notice] = 'Profile Updated'
            redirect_to profile_path
        else
            flash[:alert] = 'Could not save profile'
            redirect_back(fallback_location: profile_path)
            # (fallback_location: root_path)
        end
    end

    private
    def profile_params
        params.require(:profile).permit([
            :first_name, 
            :last_name,
            :house_number,
            :street_name,
            :suburb,
            :state,
            :postcode,
            :country_code
        ])
    end
end
