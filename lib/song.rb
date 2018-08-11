require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # def artist=(song)
  #   @this_artist = song
  # end

  # def artist
  #   @this_artist
  # end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    the_song = self.new(filename.split(" - ")[1])
    the_artist = (filename.split(" - ")[0])
    the_song.artist_name=(the_artist)
    the_song
  end
end
