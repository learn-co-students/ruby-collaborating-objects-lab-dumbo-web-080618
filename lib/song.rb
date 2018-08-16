class Song
  attr_accessor :artist, :name, :MP3Importer
  @@all = []

  def initialize(name)
    @name = name
    # @@all << self
  end

  def self.all
    @@all
  end


def save
  @@all << self
end


  def self.new_by_filename(file_name)
    fixed = file_name.split(" - ")
    artist = (fixed[0])
    new_song = Song.new(fixed[1])
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
end 
