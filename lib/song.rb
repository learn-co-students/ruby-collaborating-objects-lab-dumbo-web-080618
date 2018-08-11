require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(song_name)
    @name = song_name
  end

#this is what makes the collaboration happen between artist and song
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    # binding.pry
    # self.artist.add_song(self)

    # binding.pry

    # self.artist.name
  end

  def self.new_by_filename(file_name)
    splitArray = file_name.split(' - ')
    song_name = splitArray[1]
    artist_name = splitArray[0]

    new_song = Song.new(song_name)
    new_song.artist_name = artist_name
    new_song
  end
    # #file_name = file_name.split(' - ')
    #
    #
    # #art_name = file_name[0]
    # #song_name = file_name[1]
    #
    # # binding.pry
    #
    # new_song = Song.new(song_name)
    #
    #
    # binding.pry
    #
    # #this is one of the ways to associate the artist to the song
    # #new_song.artist = Artist.find_or_create_by_name
    #
    #
    # new_song.artist_name = art_name
    # # new_song.artist.songs << new_song
    # new_song

end
