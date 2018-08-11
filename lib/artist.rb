class Artist

  attr_accessor :name, :songs
  @@all = [] # array of all artists

  def initialize(name)
    @name = name
  end

  def songs # keeps track of an artist's songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
    songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    artist = self.all.find do |artist|
      artist.name == name
    end
    if artist == nil
      artist = self.new(name)
      @@all << artist
    end
    artist
  end

  # Artist.find_or_create_by_name(artist_name)
  # song.artist.name = 'Michael Jackson'

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
