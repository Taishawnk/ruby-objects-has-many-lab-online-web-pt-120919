require"pry"
class Author
  attr_accessor :name,:post
  def initialize(name)
    @name = name
    @post = []
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
  end
  
  end
  def add_post_by_title(post)
    post = Post.new(post)
    add_post(post)
    @@posts << post
  end
  def self.post_count
   Author.all.length
  end
  binding.pry
end
