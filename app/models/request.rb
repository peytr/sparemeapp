class Request < ApplicationRecord
  belongs_to :user
  has_many :offers
  
  accepts_nested_attributes_for :offers





  def winning_offer
    self.offers.where(accepted: true)
  end
end
