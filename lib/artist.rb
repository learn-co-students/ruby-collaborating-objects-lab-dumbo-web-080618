class Artist
  @@all = []
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end
  #save adds the artist instance to the @@all class variable
  def save
    @@all << self
  end

  def self.all 
    @@all
  end

  # Artist #songs keeps track of an artist's songs
  def add_song(song)
    song.artist = self
    @songs << song 
    self.save
    song
  end

  # Artist .find_or_create_by_name finds or creates an artist by name maintaining uniqueness of objects by name property
  def self.find_or_create_by_name(name)
    results = @@all.find{|artist|
      artist.name == name
    }
    if (results == nil)
      new_artist = self.new(name)
      new_artist.save
      new_artist
    else
      results
    end
  end

  def print_songs
    @songs.each{|song|
      puts song.name
    }
  end

  def artist_name=(name)
    @name = name
  end
end
#end-of-line