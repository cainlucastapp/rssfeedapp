class Story < ActiveRecord::Base
  attr_accessible :guid, :kind, :name, :published_at, :summary, :url
  
  def self.by_kind(name)
    where(kind: name)
  end
  
  def self.update_feed(feed_url, rss_kind)
    feed = Feedzirra::Feed.fetch_and_parse(feed_url)
    add_entries(feed.entries, rss_kind)
  end


  def self.add_entries(entries, rss_kind)
    entries.each do |entry|
      unless exists? :guid => entry.id
        create!(
          :name         => entry.title,
          :summary      => entry.summary,
          :url          => entry.url,
          :published_at => entry.published,
          :guid         => entry.id,
          :kind			=> rss_kind 
        )
      end
    end
  end
  
end
