class SitesController < ApplicationController
  before_filter :load_pages
  
  def index
    # TODO: figure this out
    #@top_stories = Story.top
    @top_stories = (1..20).to_a
  end
  
  def contact
  end
  
  private
  
  def load_pages
    @pages = Page.limit(5)
  end
  
end
