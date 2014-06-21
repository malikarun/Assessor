class Dud < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable
  has_one :location, as: :locatable

  acts_as_mappable through: :location
end
