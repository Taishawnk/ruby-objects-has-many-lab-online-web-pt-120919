class Post
attr_accessor :title, :author
  @@all =[]
  def initialize(title)
  @title = title
  @@all << self 
end
  def author_name
    if @author then @author.name else nil end
  end
  def self.all
   @@all
   end
 end 


# class Song
# attr_accessor :name, :artist
# @@all =[]
# def initialize(name)
# @name=name
# @@all << self 
# end
#   def artist_name
#     if @artist then @artist.name else nil
#       end
#   end
#   
