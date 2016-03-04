class User < ActiveRecord::Base
	has_many :offers_users
	has_many :offers, :through => :offers_users
end
