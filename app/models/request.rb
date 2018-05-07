class Request < ApplicationRecord
  belongs_to :user
  has_many :offers
  # belongs_to :offer, class_name: 'User'

  def winning_offer
    self.offers.where(accepted: true)
  end
end
