class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts

  validates :name, { uniqueness: true }
  validates :age, numericality: { minimum: 0 }
  validates :bio, length: { minimum: 30 }

  def total_likes
   @likes = 0
   self.posts.each do |post|
     @likes += post.likes
   end
   @likes
  end

  def featured_post
    @likes = -1
    most_popular = ""
    self.posts.each do |post|
      if post.likes > @likes
        @likes = post.likes
        most_popular = post
      end
    end
    most_popular
  end

 def top_five_destinations

 end

end
