class Page < ActiveRecord::Base
  attr_accessible :content, :name, :permalink
  
  def to_param
    "#{id}-#{permalink.parameterize}"
  end
  
  def stories
    Story.by_kind(name)
  end
end
