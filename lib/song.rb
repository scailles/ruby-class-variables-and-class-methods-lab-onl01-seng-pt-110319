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
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre] #if the genre is already in the hash
        genre_count[genre] += 1
      else #if it's a new genre
        genre_count[genre] = 1
      end
    end
    genre_count
  end



end