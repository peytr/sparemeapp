class RequestsController < ApplicationController

    before_action :authenticate_user!
    before_action :set_request, only: [:show, :edit, :update, :delete]

    def index
        @requests = Request.all
    end

    def show
    end

    def new
        @request = Request.new
    end

    def edit
    end

    def delete
    end

    def create
        @request = Request.new(request_params)
        @request.user = current_user
        if @request.save
            flash[:notice] = 'Spare Parts Request Submitted'
            redirect_to requests_path
        else
            flash[:alert] = 'Could Not Save Spare Parts Request'
            redirect_to root_path
        end
    end

    private
    def request_params
        params.require(:request).permit(:part_name, :part_description, :car_make, :car_model, :car_series, :car_year, :image_data)
    end

    def set_request
        @request = Request.find(params[:id])
    end
end
