class Author 
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(posts)
    @post << posts 
    posts.author = self
  end

  def add_post_by_title(title)
    post = Post.new(posts)
    post.artist = self
    @posts << posts
  end

  def self.post_count
    Post.all.length
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end
end