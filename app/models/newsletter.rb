class Newsletter < ActiveRecord::Base
  attr_accessible :title, :content, :author 
  
  has_many :categories
  has_many :subscriptions
end
