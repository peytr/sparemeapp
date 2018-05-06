class RequestsController < ApplicationController
    def index
        @requests = Request.all
    end

    def show
        @request = Request.find(params[:id])
    end

    def new
        @request = current_user.request.new
    end

    def edit
    end

    def delete
    end

    def create
        render plain: params[:request].inspect
    end
end
