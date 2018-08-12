require 'pry'

class Song


@@all = []


def self.all
  @@all
end


attr_accessor :name, :artist, :MP3Importer

def initialize(name)
 @name = name
end


def artists
  Artist.all.select do |artist|
    artist.song == self
end
end


def save
  @@all << self
end

def self.new_by_filename(file_name)
  filefixed = file_name.split(" - ")
  artist = Artist.new(filefixed[0])
  song = Song.new(filefixed[1])

  song.artist = artist

  song.save
  artist.add_song(song)
  # artist.save
return song
end








end
