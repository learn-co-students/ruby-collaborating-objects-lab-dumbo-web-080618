require_relative 'artist.rb'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
  # Song .new_by_filename creates a new instance of a song from the file that's passed
  def self.new_by_filename(file)
    song_name = file.split(' - ')[1]
    artist_name = file.split(' - ')[0]
    song = self.new(song_name)
    new_artist = Artist.new(artist_name)
    new_artist.add_song(song)
    song
  end

   # Song #artist= sets the artist object to belong to the song
   def artist=(artist)
    @artist = artist
   end
  def name=(name)
    @name = name
  end
end
