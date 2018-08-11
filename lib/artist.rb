class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    # @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(art_name)
    #@@all each returns an empty array but find returns a value 
    artist_obj = @@all.find{ |artist| artist.name == art_name }
    if artist_obj == nil
      artist_obj = Artist.new(art_name)
    end
    artist_obj.save
    artist_obj
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
