class RequestsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_request, only: [:show, :edit, :update, :destroy]

    def index
        @requests = Request.all
    end

    def show
    end

    def new
        @request = Request.new
    end

    def edit
        @request = Request.find_or_initialize_by(user: current_user)
        # @request = Request.find(request_params)
        @request = Request.find(params[:id])
        # @request = current_user.request
        @request.user = current_user 
    end

    def update
        @request = current_user.request

        if @request.update(request_params)
            flash[:notice] = 'Spare Parts Request Updated'
            redirect_to profile_path
        else
            flash[:alert] = 'Could not save spare parts request'
            redirect_back(fallback_location: profile_path)
        end
    end

    def destroy
    end

    def create
        @request = Request.new(request_params)
        @request.user = current_user

        if @request.save
            flash[:notice] = 'Thanks! Your Spare Parts Request has been Submitted. We will be in touch as soon as a parts offer has been recieved.'
            redirect_to profile_path
        else
            flash[:alert] = 'Could Not Save Spare Parts Request'
            redirect_back fallback_location: new_request_path
        end
    end


    private
    def request_params
        params.require(:request).permit(:part_name, :part_description, :car_make, :car_model, :car_series, :car_year, :image)
    end

    def set_request
        @request = Request.find(params[:id])
        authorize @request
    end

end
