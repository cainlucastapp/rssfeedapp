class TechnologyFeed < ActiveRecord::Base
  attr_accessible :url
  validates :url, :presence => true
  
  after_save :create_feeds
  
  private
  
  def create_feeds
    TechnologyStory.update_feed(url)
  end 
end
