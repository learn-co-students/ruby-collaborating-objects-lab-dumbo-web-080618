require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song = self.new(file.split(" - ")[1])
    # song.artist = Artist.all.find {|artist| artist.name == file.split(" - ")[0]}
    song.artist = Artist.find_or_create_by_name(file.split(" - ")[0])
    # binding.pry
    song.artist.add_song(song)
    song
    # song.name =
    # song
    # song = Song.new(file)
  end
end
