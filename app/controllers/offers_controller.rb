class OffersController < ApplicationController

  before_action :authenticate_user!
  before_action :set_offer, only: [:show, :edit, :update, :delete]

  def index
    puts "REQUEST_ID: #{params[:request_id]}"
    @offers = Offer.all
    # @offers = Offer.where(requestid: :request_id)
  end

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
    @offer = Offer.find(offer_params)
    # @offer = Offer.find(params[:id])
    # @offer.user = current_user
    # @offer = current_user.offer
    # @offer = Offer.find_or_initialize_by(user: current_user)

    # where request_id is current_request
    # show offers
  end


  # Stripe Method
  # posts/:id/booking
  def accept_offer
    if current_user.stripe_id.blank?
      customer = Stripe::Customer.create(
        email: params[:stripeEmail],
        source: params[:stripeToken],
      )
      current_user.stripe_id = customer.id
      current_user.save!
    end

    charge = Stripe::Charge.create(
      customer: current_user.stripe_id,
      amount: @offer.price,
      description: @offer.description,
      currency: "AUD",
    )

    # @post.bookings << current_user
    # curent_user.charges << Charge.new(charge_id: charge.id)
    flash[:notice] = "Payment made!"
    redirect_back fallback_location: request_path
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
end
  
  private
  
  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:message, :price)
  end


end
