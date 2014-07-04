class Post < ActiveRecord::Base
	

	validates :title, :content, :amount, :presence => true
	validates :title, :length => {:minimum => 2}
	validates :title, :uniqueness => true
end
