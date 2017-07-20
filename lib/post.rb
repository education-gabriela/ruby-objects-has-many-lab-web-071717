class Post
  @@all_posts = []
  attr_accessor :title, :author, :author_name

  def initialize(title)
    @title = title
    @@all_posts << self
  end

  def self.all
    @@all_posts
  end

  def author_name
    self.author ? self.author.name : nil
  end

end
