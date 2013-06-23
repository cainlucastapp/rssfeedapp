class SitesController < ApplicationController
  
  def index
  	@worldrss = WorldNewsStory.order('published_at DESC').limit(1)
  	@usrss = UsNewsStory.order('published_at DESC').limit(1)
  	@businessrss = BusinessStory.order('published_at DESC').limit(3)
  	@politicsrss = PoliticsStory.order('published_at DESC').limit(3)
  	@crimerss = CrimeStory.order('published_at DESC').limit(3)
  	@stocksrss = StocksStory.order('published_at DESC').limit(7)
  	@technologyrss = TechnologyStory.order('published_at DESC').limit(2)
  	@entertainmentrss = EntertainmentStory.order('published_at DESC').limit(2)
  	@healthrss = HealthStory.order('published_at DESC').limit(2)
  end
  
  def world
  	 @worldrss = WorldNewsStory.order('published_at DESC').all 
  end

  def us
  	@usrss = UsNewsStory.order('published_at DESC').all 
  end
  
  def business
  	@businessrss = BusinessStory.order('published_at DESC').all
  end
  
  def stocks
  	@stocksrss = StocksStory.order('published_at DESC').all
  end
  
  def politics
  	@politicsrss = PoliticsStory.order('published_at DESC').all
  end
  
  def crime
  	@crimerss = CrimeStory.order('published_at DESC').all
  end
  
  def technology
  	@technologyrss = TechnologyStory.order('published_at DESC').all
  end
  
  def health
  	@healthrss = HealthStory.order('published_at DESC').all
  end
  
  def entertainment
  	@entertainmentrss = EntertainmentStory.order('published_at DESC').all 
  end
  
  def contact
  end
  
end
