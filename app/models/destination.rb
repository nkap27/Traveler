class Destination < ApplicationRecord
  has_many :posts
  has_many :bloggers, through: :posts

  def featured_post
    @most_likes = -1
    self.posts.each do |post|
      if post.likes > @most_likes
        @most_likes = post.likes
        @hottest_post = post.title
      end
    end
    @hottest_post
  end

  def five_most_recent
    recent_posts = []
    if self.posts.count <= 5
      self.posts.each do |post|
        recent_posts << post
      end
    else
      i = -1
      self.posts.each do |post|
        recent_posts << self.posts[i]
        i -= 1
      end
    end
    recent_posts
  end

  def unique_bloggers
    bloggers_array = []
    self.posts.each do |post|
      bloggers_array << post.blogger
    end
    unique_bloggers_array = bloggers_array.uniq
  end

  def bloggers_average_age
    if unique_bloggers != []
      age_array = []
      self.unique_bloggers.each do |blogger|
        age_array << blogger.age
      end
      average_age = age_array.sum / age_array.size
    end
    average_age
  end


end #model end
