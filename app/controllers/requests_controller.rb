class RequestsController < ApplicationController
    def index
        @requests = Request.all
    end

    def show
        @request = Request.find(params[:id])
    end

    def new
        @request = Request.new
    end

    def edit
    end

    def delete
    end

    def create
        # render plain: params[:request].inspect
        @request = Request.new(request_params)
        
        if @request.save
            redirect_to index_path
        else
            render new_path
        end
    end

    private
    def request_params
        params.require(:request).permit()
    end
end
