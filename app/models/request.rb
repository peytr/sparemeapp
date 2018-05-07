class Request < ApplicationRecord
  belongs_to :user
  # belongs_to :offer, class_name: 'User'
end
