class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @posts = []
  end
 
  def posts
    @postsPost.all.select {|post| post.author == self}
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
#    

  end

end


  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    Song.all.count
  end

end 