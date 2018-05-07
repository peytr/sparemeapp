class OffersController < ApplicationController

  before_action :authenticate_user!
  before_action :set_request, only: [:show, :edit, :update, :delete]

  def new
    @offer = Offer.new
    @request = Request.find(params[:request_id])
  end

  def edit
  end

  def show
  end

  private

  def set_request
    @request = Request.find(params[:request_id])
  end

end
