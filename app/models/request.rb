class Request < ApplicationRecord
  include ImageUploader::Attachment.new(:image)
  
  belongs_to :user
  has_many :offers
  
  accepts_nested_attributes_for :offers

end
