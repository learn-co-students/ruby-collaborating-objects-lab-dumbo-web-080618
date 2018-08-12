class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
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

  def self.find_or_create_by_name(artist)
    @@all.each do |singer|
      if singer.name == artist
        return singer
      end
    end
    Artist.new(artist)
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end


  # def songs
  #   Song.all.select {|song| song.artist == self}
  # end

end
