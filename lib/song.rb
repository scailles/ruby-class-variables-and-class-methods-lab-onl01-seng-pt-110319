class Song
  attr_accessor :name, :artist, :genre
  attr_reader :count
  
 @@count=0
 @@artists=[]
 @@genres=[]
 
  def initialize(name, artist, genre)
    @name=name
    @artist=artist
      @@artists<< artist
    @genre = genre
      @@genres << genre
    @@count+=1
  end

def self.count
  return @@count
end

def self.artists
  artists=[]
  @@artists.each do |name|
    if !(artists.include(#{name}))
    artists << name
  end
return artists
end
end

end