class Author
  attr_accessor :name,:post
  def initialize(name)
    @name = name
    @posts=[]
  end
  
  def posts
    Author.all.select {|post| post.author == self }
  end
  def self.all
   @@all
  end
  
  def add_post(post)
    @posts << post
    post.author = self
    @@posts << post
    post.author = self
  end
  def add_post_by_title(post)
    post = Post.new(post)
    add_post(post)

  end
  def self.post_count
    @@post_count
  end
end
#     add_song(song)
#   end
# def self.song_count
#   Song.all.length
# end
# end