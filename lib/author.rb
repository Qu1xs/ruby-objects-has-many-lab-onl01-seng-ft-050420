class Author
  attr_accessor :name
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
 
  def posts
    @posts
  end
 
  def add_post(post)
    posts << self
    post.author = self
    @@post_count += 1
  end
    
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post
  end
 
  def self.post_count
#    Post.all.select {|post| post.author == self}
    @@post_count
  end

end