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
   @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    gc={}
    @@genres.each do |genre|
    if gc[genre]
      gc[genre] +=1
    else gc[genre]    



end