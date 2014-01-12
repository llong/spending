class User < ActiveRecord::Base
	validates :name, :title, :amount, :presence => true
	
end
