class RequestsController < ApplicationController
    def index
    end

    def new
    end

    def create
        render plain: params[:request].inspect
    end
end
