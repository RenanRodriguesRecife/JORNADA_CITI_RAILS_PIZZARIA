class Offer < ActiveRecord::Base
  belongs_to :company
  has_many :offers_users
  has_many :users, :through => :offers_users
  validates :tittle, presence: true, length: {maximum: 50}
	validates :value, presence: true
end
