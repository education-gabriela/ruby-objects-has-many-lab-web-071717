class Author
  @@post_count = 0
  attr_reader :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    increment_post_count
    post.author = self
  end

  def add_post_by_title(title)
    increment_post_count
    post = Post.new(title)
    post.author = self
  end

  def posts
    Post.all.select do |post|
      post.author == self
    end
  end

  def self.post_count
    @@post_count
  end

  private

  def increment_post_count
    @@post_count += 1
  end
end
