class User < ActiveRecord::Base
	has_many :offers_users
	has_many :offers, :through => :offers_users
	validates :name, presence: true, length: {maximum: 50}
	validates :tel, presence: true, length: {in:8..10}
	validates :address, presence: true, length: {maximum: 50}
end
