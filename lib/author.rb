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
  def add_post_by_title(post)
    post = Post.new(post)
    add_post(post)
    @@posts << post
  end
  def self.post_count
   Author.all.length
  end
  #binding.pry
end

# require"pry"
# class Artist
#   attr_accessor :name, :song
#   def initialize(name)
#     @name = name
#     @songs = []
#   end 
# def songs
# Song.all.select {|song| song.artist == self }
# end
# def self.all
#   @@all
# end
# def add_song(song)
#   @songs << song
#   song.artist = self
# end
# def add_song_by_name(song)
#   song = Song.new(song)
#   add_song(song)
# end
# def self.song_count
#   Song.all.length
#   end
# end
  


