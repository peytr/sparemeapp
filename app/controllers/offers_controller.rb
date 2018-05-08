class OffersController < ApplicationController

  before_action :authenticate_user!
  before_action :set_offer, only: [:show, :edit, :update, :delete]

  def new
    @offer = Offer.new
    @request = Request.find(params[:request_id])
  end

  def create
    offer = Offer.new(offer_params)
    request = Request.find(params[:request_id])
    
    offer.user = current_user
    offer.request = request

    if offer.save
      flash[:notice] = 'Parts Offer has been submitted. We will notify you if you offer has been accepted.'
      redirect_to root_path
    else
      flash[:alert] = 'Could not submit your parts offer.'
      redirect_back(fallback_location: root_path)
    end
  end

  def edit
    @offer = Offer.find_or_initialize_by(user: current_user)
  end

  def show
  end
  
  private
  
  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:message, :price, :image_data)
  end


end
