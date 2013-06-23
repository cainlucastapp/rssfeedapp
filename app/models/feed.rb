class Feed < ActiveRecord::Base
  attr_accessible :url, :name, :kind
  
  has_many :categories
  
  validates :url, :presence => true
  validates :name, :presence => true
  validates :kind, :presence => true
  
  after_save :create_feeds
  
  private
  
  def create_feeds
    Story.update_feed(url, kind)
  end
  
end
